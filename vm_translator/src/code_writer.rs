use crate::parser::{Command, CommandIter, Operation, Segment};
use asm_macro::hack;
use std::fs::File;
use std::io::{BufWriter, Write};
use std::path::Path;

macro_rules! ASM_UNARY_OP {
    () => {
        hack!(
            "// unary operation",
            "@SP",
            M=M-1,
            A=M,
            "{operation}",
            @SP,
            M=M+1,
        )
    };
}

macro_rules! ASM_BINARY_OP {
    () => {
        hack!(
            "// binary operation",
            "@SP",
            M = M - 1,
            A = M,
            D = M,
            "@SP",
            M = M - 1,
            A = M,
            "{operation}",
            "@SP",
            M = M + 1,
        )
    };
}

macro_rules! ASM_LOGICAL_OP {
    () => {
        hack!(
            "// logical operation",
            D = M - D,
            "@{ifsuccess}",
            "D;{jmpop}",
            "@SP",
            A = M,
            M = 0,
            "@{end}",
            "0;JMP",
            "({ifsuccess})",
            "@SP",
            A = M,
            M = -1,
            "({end})"
        )
    };
}

macro_rules! ASM_PUSH_SEGMENT_OP {
    () => {
        hack!("{load_val}", "@SP", A = M, M = D, "@SP", M = M + 1,)
    };
}

macro_rules! ASM_POP_SEGMENT_OP {
    () => {
        hack!("// pop", "@SP", M = M - 1, A = M, D = M, "{setup_m}", M = D,)
    };
}

macro_rules! ASM_SEGMENT_BASE_MOVE {
    () => {
        hack!(
            "// segment base move",
            "@{index}",
            D = A,
            "@{segment_var}",
            M = M + D,
        )
    };
}

macro_rules! ASM_SEGMENT_BASE_RESTORE {
    () => {
        hack!(
            "// segment base restore",
            "@{index}",
            D = A,
            "@{segment_var}",
            M = M - D,
        )
    };
}

lazy_static! {
    static ref UNARY_OPERATIONS: Vec<Operation> = vec![Operation::Neg, Operation::Not];
    // Segments where each memory location has a unique variable name
    static ref NAMED_SEGMENTS: Vec<Segment> = vec![Segment::Pointer, Segment::Static, Segment::Temp];
}

pub struct CodeWriter {
    writer: BufWriter<File>,
    label_counter: i16,
    current_vm_file: Option<String>,
    current_command: Option<Command>,
}

impl CodeWriter {
    pub fn new(out_file: File) -> Self {
        CodeWriter {
            writer: BufWriter::new(out_file),
            label_counter: 0,
            current_vm_file: None,
            current_command: None,
        }
    }

    pub fn write_code(&mut self, vm_file_path: &Path, commands: CommandIter) {
        self.current_vm_file = Some(
            vm_file_path
                .file_stem()
                .unwrap()
                .to_str()
                .unwrap()
                .to_owned(),
        );
        for command in commands {
            self.current_command = Some(command.unwrap());
            self.generate_command_code();
        }
        self.writer.flush().unwrap();
    }

    fn get_next_label(&mut self) -> String {
        self.label_counter += 1;
        format!("l{}", self.label_counter)
    }

    fn get_static_variable(&self, index: i16) -> String {
        format!("{}.{}", self.current_vm_file.as_ref().unwrap(), index)
    }

    fn generate_command_code(&mut self) {
        match self.current_command.take().unwrap() {
            Command::Alu(operation) => {
                self.generate_operation(operation);
            }
            Command::Push { segment, index } => {
                self.generate_push_segment(segment, index);
            }
            Command::Pop { segment, index } => {
                self.generate_pop_segment(segment, index);
            }
        }
    }

    fn generate_operation(&mut self, operation: Operation) {
        if UNARY_OPERATIONS.contains(&operation) {
            self.generate_unary_operation(operation);
        } else {
            self.generate_binary_operation(operation);
        }
    }

    fn generate_unary_operation(&mut self, operation: Operation) {
        let operation = match operation {
            Operation::Neg => "M=-M",
            Operation::Not => "M=!M",
            _ => panic!("Unexpected unary operation!"),
        };
        let asm = format!(ASM_UNARY_OP!(), operation = operation);
        self.writer.write(asm.as_bytes()).unwrap();
    }

    // X op Y. X is in M. Y is in D
    fn generate_binary_operation(&mut self, operation: Operation) {
        let operation = match operation {
            Operation::Add => "M=M+D".to_string(),
            Operation::And => "M=M&D".to_string(),
            Operation::Eq => self.generate_logical_operation("JEQ"),
            Operation::Gt => self.generate_logical_operation("JGT"),
            Operation::Lt => self.generate_logical_operation("JLT"),
            Operation::Or => "M=M|D".to_owned(),
            Operation::Sub => "M=M-D".to_owned(),
            _ => panic!("Unexpected binary operation {:?}", operation),
        };
        let asm = format!(ASM_BINARY_OP!(), operation = operation);
        self.writer.write(asm.as_bytes()).unwrap();
    }

    fn generate_logical_operation(&mut self, jmpop: &str) -> String {
        let ifsuccess = self.get_next_label();
        let end = self.get_next_label();
        format!(
            ASM_LOGICAL_OP!(),
            ifsuccess = ifsuccess,
            end = end,
            jmpop = jmpop
        )
    }
    fn generate_push_segment(&mut self, segment: Segment, index: i16) {
        let mut load_val = String::new();

        if segment != Segment::Constant && segment != Segment::Static && index > 0 {
            load_val.push_str(&format!(
                hack!("// push: D = index", "@{index}", D = A,),
                index = index
            ));
        }
        load_val.push_str(&match segment {
            Segment::Argument => hack!("// push argument", "@ARG", A = M).to_owned(),
            Segment::Constant => {
                format!(hack!("// push constant", "@{index}", D = A), index = index)
            }
            Segment::Local => hack!("// push local", "@LCL", A = M).to_owned(),
            Segment::Pointer => hack!("// push pointer", "@THIS").to_owned(),
            Segment::Static => {
                let variable = self.get_static_variable(index);
                format!(
                    hack!("// push static", "@{variable}", D = M),
                    variable = variable
                )
            }
            Segment::Temp => hack!("// push temp", "@R5").to_owned(),
            Segment::That => hack!("// push that", "@THAT", A = M).to_owned(),
            Segment::This => hack!("// push this", "@THIS", A = M).to_owned(),
        });
        if segment != Segment::Constant && segment != Segment::Static {
            if index > 0 {
                load_val.push_str("\nA=D+A");
            }
            load_val.push_str("\nD=M");
        }
        let asm = format!(ASM_PUSH_SEGMENT_OP!(), load_val = load_val);
        self.writer.write(asm.as_bytes()).unwrap();
    }

    fn generate_pop_segment(&mut self, segment: Segment, index: i16) {
        // Temporarily move the segment variable to point to index location
        if !NAMED_SEGMENTS.contains(&segment) && index > 0 {
            self.generate_segment_base_move(segment, index);
        }

        let setup_m = if NAMED_SEGMENTS.contains(&segment) {
            let variable = match segment {
                Segment::Pointer => Self::get_pointer_variable(index),
                Segment::Static => self.get_static_variable(index),
                Segment::Temp => Self::get_temp_variable(index),
                _ => panic!("Unexpected named segment!"),
            };
            format!(hack!("@{variable}"), variable = variable)
        } else {
            let variable = Self::get_segment_base(segment);
            format!(hack!("@{variable}", A = M), variable = variable)
        };
        let asm = format!(ASM_POP_SEGMENT_OP!(), setup_m = setup_m);
        self.writer.write(asm.as_bytes()).unwrap();

        // Restore segment variable to point to the base
        if !NAMED_SEGMENTS.contains(&segment) && index > 0 {
            self.generate_segment_base_restore(segment, index);
        }
    }

    fn get_segment_base(segment: Segment) -> String {
        match segment {
            Segment::Argument => "ARG".to_owned(),
            Segment::Local => "LCL".to_owned(),
            Segment::That => "THAT".to_owned(),
            Segment::This => "THIS".to_owned(),
            _ => panic!("Unexpected segment!"),
        }
    }

    fn get_temp_variable(index: i16) -> String {
        format!("R{}", 5 + index)
    }

    fn get_pointer_variable(index: i16) -> String {
        if index == 0 {
            "THIS".to_owned()
        } else {
            "THAT".to_owned()
        }
    }

    fn generate_segment_base_move(&mut self, segment: Segment, index: i16) {
        let asm = format!(
            ASM_SEGMENT_BASE_MOVE!(),
            segment_var = Self::get_segment_base(segment),
            index = index
        );
        self.writer.write(asm.as_bytes()).unwrap();
    }

    fn generate_segment_base_restore(&mut self, segment: Segment, index: i16) {
        let asm = format!(
            ASM_SEGMENT_BASE_RESTORE!(),
            segment_var = Self::get_segment_base(segment),
            index = index
        );
        self.writer.write(asm.as_bytes()).unwrap();
    }
}
