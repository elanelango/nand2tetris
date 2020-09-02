use std::collections::HashMap;
use std::fs::File;
use std::io;
use std::io::{BufRead, BufReader};

pub type CommandResult = Result<Command, io::Error>;
pub type CommandIter = Box<dyn Iterator<Item = CommandResult>>;

pub fn commands(vm_file: File) -> CommandIter {
    let iter = BufReader::new(vm_file)
        .lines()
        // Filter-out comment lines and blank lines
        .filter(|line_result| {
            if let Ok(line) = line_result {
                !(line.starts_with("//") || line.trim().is_empty())
            } else {
                true
            }
        })
        //  Remove in-line comments and trim white spaces
        .map(|line_result| {
            if let Ok(line) = line_result {
                Ok(line.split("//").nth(0).unwrap().trim().to_owned())
            } else {
                line_result
            }
        })
        .map(|line_result| {
            if let Ok(line) = line_result {
                Ok(Command::new(line))
            } else {
                Result::Err(line_result.unwrap_err())
            }
        });
    Box::new(iter)
}

lazy_static! {
    static ref OPERATION_MAP: HashMap<String, Operation> = {
        [
            ("add".to_owned(), Operation::Add),
            ("sub".to_owned(), Operation::Sub),
            ("neg".to_owned(), Operation::Neg),
            ("eq".to_owned(), Operation::Eq),
            ("gt".to_owned(), Operation::Gt),
            ("lt".to_owned(), Operation::Lt),
            ("and".to_owned(), Operation::And),
            ("or".to_owned(), Operation::Or),
            ("not".to_owned(), Operation::Not),
        ]
        .iter()
        .cloned()
        .collect()
    };
    static ref SEGMENT_MAP: HashMap<String, Segment> = {
        [
            ("argument".to_owned(), Segment::Argument),
            ("local".to_owned(), Segment::Local),
            ("static".to_owned(), Segment::Static),
            ("constant".to_owned(), Segment::Constant),
            ("this".to_owned(), Segment::This),
            ("that".to_owned(), Segment::That),
            ("pointer".to_owned(), Segment::Pointer),
            ("temp".to_owned(), Segment::Temp),
        ]
        .iter()
        .cloned()
        .collect()
    };
}

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum Operation {
    Add,
    Sub,
    Neg,
    Eq,
    Gt,
    Lt,
    And,
    Or,
    Not,
}

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum Segment {
    Argument,
    Local,
    Static,
    Constant,
    This,
    That,
    Pointer,
    Temp,
}

#[derive(Debug)]
pub enum Command {
    Alu(Operation),
    Push { segment: Segment, index: i16 },
    Pop { segment: Segment, index: i16 },
    Label { label: String },
    Goto { label: String },
    IfGoto { label: String },
    Function { name: String, local_count: i16 },
    Call { name: String, args_count: i16 },
    Return,
}

impl Command {
    pub fn new(command: String) -> Self {
        if command.starts_with("push") {
            let mut tokens = command.split(" ");
            let segment = SEGMENT_MAP[tokens.nth(1).unwrap()];
            let index = tokens.nth(0).unwrap().parse::<i16>().unwrap();
            Command::Push { segment, index }
        } else if command.starts_with("pop") {
            let mut tokens = command.split(" ");
            let segment = SEGMENT_MAP[tokens.nth(1).unwrap()];
            let index = tokens.nth(0).unwrap().parse::<i16>().unwrap();
            Command::Pop { segment, index }
        } else if command.starts_with("label") {
            let mut tokens = command.split(" ");
            let label = tokens.nth(1).unwrap().to_owned();
            Command::Label { label }
        } else if command.starts_with("goto") {
            let mut tokens = command.split(" ");
            let label = tokens.nth(1).unwrap().to_owned();
            Command::Goto { label }
        } else if command.starts_with("if-goto") {
            let mut tokens = command.split(" ");
            let label = tokens.nth(1).unwrap().to_owned();
            Command::IfGoto { label }
        } else if command.starts_with("function") {
            let mut tokens = command.split(" ");
            let name = tokens.nth(1).unwrap().to_owned();
            let local_count = tokens.nth(0).unwrap().parse::<i16>().unwrap();
            Command::Function { name, local_count }
        } else if command.starts_with("call") {
            let mut tokens = command.split(" ");
            let name = tokens.nth(1).unwrap().to_owned();
            let args_count = tokens.nth(0).unwrap().parse::<i16>().unwrap();
            Command::Call { name, args_count }
        } else if command.starts_with("return") {
            Command::Return
        } else if OPERATION_MAP.contains_key(&command) {
            Command::Alu(OPERATION_MAP[&command])
        } else {
            panic!("Cannot parse {}", command);
        }
    }
}
