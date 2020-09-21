use crate::grammar::*;
use crate::symtable::{SymTable, VarEntry};
use std::fs::File;
use std::io::{BufWriter, Write};

struct VmWriter {
    writer: BufWriter<File>,
    symtable: SymTable,
    label_count: usize,
}

pub fn generate_vm_code(class: Class, vm_file: File) {
    let writer = BufWriter::new(vm_file);
    let mut symtable = SymTable::new(class.name.as_str());
    symtable.load_class_symbols(&class);
    let mut vm_writer = VmWriter {
        writer,
        symtable,
        label_count: 0,
    };
    vm_writer.gen_class(class);
}

impl VmWriter {
    fn gen_class(&mut self, class: Class) {
        for sub in class.subroutines {
            self.gen_sub(sub, class.field_vars.len());
        }
    }

    fn gen_sub(&mut self, sub: Subroutine, fields_count: usize) {
        self.label_count = 0;
        self.symtable.load_sub_symbols(&sub);
        self.function(sub.name, sub.locals.len());
        if let SubKind::Method = sub.kind {
            self.push("argument", 0);
            self.pop("pointer", 0);
        } else if let SubKind::Constructor = sub.kind {
            self.push("constant", fields_count as i16);
            self.call("Memory.alloc", 1);
            self.pop("pointer", 0);
        }
        self.gen_stmts(&sub.stmts);
    }

    fn gen_stmts(&mut self, stmts: &Vec<Box<dyn Stmt>>) {
        for stmt in stmts {
            self.gen_stmt(stmt);
        }
    }

    fn gen_stmt(&mut self, stmt: &Box<dyn Stmt>) {
        let stmt_kind = stmt.kind();
        let any_stmt = stmt.as_any();
        match stmt_kind {
            StmtKind::Let => self.gen_let(any_stmt.downcast_ref::<Let>().unwrap()),
            StmtKind::If => self.gen_if(any_stmt.downcast_ref::<If>().unwrap()),
            StmtKind::While => self.gen_while(any_stmt.downcast_ref::<While>().unwrap()),
            StmtKind::Do => self.gen_do(any_stmt.downcast_ref::<Do>().unwrap()),
            StmtKind::Return => self.gen_return(any_stmt.downcast_ref::<Return>().unwrap()),
        }
    }

    fn gen_let(&mut self, stmt: &Let) {
        self.gen_expr(&stmt.rvalue);

        let var_entry = self
            .symtable
            .lookup(&stmt.lvalue.name)
            .cloned()
            .expect("Unknown lvalue in let statement");

        let (dest_seg, dest_index) = if stmt.lvalue.index.is_some() {
            self.gen_that(&stmt.lvalue, var_entry);
            ("that", 0)
        } else {
            (var_entry.kind.seg_name(), var_entry.index)
        };
        self.pop(dest_seg, dest_index);
    }

    fn gen_if(&mut self, stmt: &If) {
        let if_true = self.get_label();
        let if_false = self.get_label();
        let if_end = self.get_label();

        self.gen_expr(&stmt.cond);
        self.ifgoto(&if_true);
        self.goto(&if_false);
        self.label(&if_true);
        self.gen_stmts(&stmt.true_stmts);
        self.goto(&if_end);
        self.label(&if_false);
        if let Some(false_stmts) = stmt.false_stmts.as_ref() {
            self.gen_stmts(false_stmts);
        }
        self.label(&if_end);
    }

    fn gen_while(&mut self, stmt: &While) {
        let loop_start = self.get_label();
        let loop_end = self.get_label();
        let if_true = self.get_label();

        self.label(&loop_start);
        self.gen_expr(&stmt.cond);
        self.ifgoto(&if_true);
        self.goto(&loop_end);
        self.label(&if_true);
        self.gen_stmts(&stmt.stmts);
        self.goto(&loop_start);
        self.label(&loop_end);
    }

    fn gen_do(&mut self, stmt: &Do) {
        self.gen_sub_call(&stmt.0);
        self.pop("temp", 0);
    }

    fn gen_return(&mut self, stmt: &Return) {
        if let Some(expr) = &stmt.0 {
            self.gen_expr(expr);
        } else {
            self.push("constant", 0);
        }
        writeln!(self.writer, "return").unwrap();
    }

    fn gen_sub_call(&mut self, sub_call: &SubCall) {
        let recv_name = sub_call.recv_name.clone().unwrap_or("this".to_owned());
        let recv_symbol_entry = self.symtable.lookup(&recv_name).cloned();

        let recv_class_name = recv_symbol_entry
            .as_ref()
            .and_then(|var_entry| {
                if let Type::Class(class_name) = &var_entry.vtype {
                    Some(class_name)
                } else {
                    None
                }
            })
            .or_else(|| {
                if recv_name == "this" {
                    Some(&self.symtable.class_name)
                } else {
                    None
                }
            });

        let fn_name = if let Some(class_name) = recv_class_name {
            format!("{}.{}", class_name, sub_call.sub_name)
        } else {
            format!("{}.{}", recv_name, sub_call.sub_name)
        };

        let mut args_count = sub_call.args.len();
        if let Some(recv_entry) = recv_symbol_entry {
            self.push(recv_entry.kind.seg_name(), recv_entry.index as i16);
            args_count += 1;
        } else if recv_name == "this" {
            self.push("pointer", 0);
            args_count += 1;
        }

        for expr in &sub_call.args {
            self.gen_expr(expr);
        }

        self.call(&fn_name, args_count);
    }

    fn gen_expr(&mut self, expr: &Expr) {
        self.gen_term(&expr.lterm);
        if let Some(rterm) = expr.rterm.as_ref() {
            self.gen_term(rterm);
            self.gen_binary_op(expr.op.as_ref().unwrap());
        }
    }

    fn gen_term(&mut self, term: &Box<Term>) {
        match &**term {
            Term::Int(int_const) => self.push("constant", *int_const),
            Term::Str(str_const) => self.gen_str_const(str_const),
            Term::Keyword(keyword_const) => self.gen_keyword_const(keyword_const),
            Term::Var(var_expr) => {
                let var_entry = self
                    .symtable
                    .lookup(&var_expr.name)
                    .cloned()
                    .expect("Unknown lvalue in let statement");
                if var_expr.index.is_some() {
                    self.gen_that(var_expr, var_entry);
                    self.push("that", 0);
                } else {
                    self.push(var_entry.kind.seg_name(), var_entry.index as i16);
                }
            }
            Term::Call(sub_call) => self.gen_sub_call(sub_call),
            Term::Expr(expr) => self.gen_expr(expr),
            Term::Unary(unary_op, term) => {
                self.gen_term(term);
                match unary_op {
                    UnaryOp::Neg => self.command("neg"),
                    UnaryOp::Not => self.command("not"),
                }
            }
        }
    }

    fn gen_str_const(&mut self, str_const: &String) {
        self.push("constant", str_const.len() as i16);
        self.call("String.new", 1);
        for ch in str_const.chars() {
            self.push("constant", ch as i16);
            self.call("String.appendChar", 2);
        }
    }

    fn gen_that(&mut self, var_expr: &VarExpr, var_entry: VarEntry) {
        self.push(var_entry.kind.seg_name(), var_entry.index as i16);
        self.gen_expr(var_expr.index.as_ref().unwrap());
        self.command("add");
        self.pop("pointer", 1);
    }

    fn gen_keyword_const(&mut self, keyword_const: &KeywordConst) {
        match keyword_const {
            KeywordConst::True => {
                self.push("constant", 1);
                self.command("neg");
            }
            KeywordConst::False => self.push("constant", 0),
            KeywordConst::Null => self.push("constant", 0),
            KeywordConst::This => self.push("pointer", 0),
        }
    }

    fn gen_binary_op(&mut self, op: &BinaryOp) {
        let vm_op = match op {
            BinaryOp::Add => "add",
            BinaryOp::Sub => "sub",
            BinaryOp::Mul => "call Math.multiply 2",
            BinaryOp::Div => "call Math.divide 2",
            BinaryOp::And => "and",
            BinaryOp::Or => "or",
            BinaryOp::Lt => "lt",
            BinaryOp::Gt => "gt",
            BinaryOp::Eq => "eq",
        };
        writeln!(self.writer, "{}", vm_op).unwrap();
    }

    fn get_label(&mut self) -> String {
        let label = format!("label{}", self.label_count);
        self.label_count += 1;
        label
    }

    fn function(&mut self, name: String, local_count: usize) {
        writeln!(
            self.writer,
            "function {}.{} {}",
            self.symtable.class_name, name, local_count
        )
        .unwrap();
    }

    fn push(&mut self, seg: &str, index: i16) {
        writeln!(self.writer, "push {} {}", seg, index).unwrap();
    }

    fn pop(&mut self, seg: &str, index: usize) {
        writeln!(self.writer, "pop {} {}", seg, index).unwrap();
    }

    fn call(&mut self, fn_name: &str, args_count: usize) {
        writeln!(self.writer, "call {} {}", fn_name, args_count).unwrap();
    }

    fn ifgoto(&mut self, label: &str) {
        writeln!(self.writer, "if-goto {}", label).unwrap();
    }

    fn label(&mut self, label: &str) {
        writeln!(self.writer, "label {}", label).unwrap();
    }

    fn goto(&mut self, label: &str) {
        writeln!(self.writer, "goto {}", label).unwrap();
    }

    fn command(&mut self, command: &str) {
        writeln!(self.writer, "{}", command).unwrap();
    }
}
