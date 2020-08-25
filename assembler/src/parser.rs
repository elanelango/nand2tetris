use std::io;
use std::io::Lines;
use std::fs::File;
use std::io::BufReader;
use std::io::BufRead;
use std::fmt;
use std::error::Error;

use crate::hack::Ins;

pub type Result<T> = std::result::Result<T, ParseError>;

#[derive(Debug)]
pub struct ParseError {
    message: String,
}

impl fmt::Display for ParseError {
    fn fmt(&self, formatter: &mut fmt::Formatter) -> fmt::Result {
        write!(formatter, "Invalid instruction: {}", self.message)
    }
}

impl Error for ParseError {}

pub struct Parser {
    lines: Lines<BufReader<File>>,
    current_line: Option<io::Result<String>>,
}

impl Parser {
    pub fn new(file: File) -> Self {
        let mut lines = BufReader::new(file).lines();
        let current_line = lines.next();
        Parser {
            lines,
            current_line,
        }
    }

    pub fn has_more_ins(&mut self) -> bool {
        if self.current_line.is_none() {
            return false;
        }
        let result = self.current_line.as_ref().unwrap();
        // If io Err return true and let the caller deal with the error
        if result.is_err() {
            return true;
        }
        let ins = result.as_ref().unwrap();
        // Skip comments and blank lines
        if ins.starts_with("//") || ins.trim().is_empty() {
            self.current_line = self.lines.next();
            self.has_more_ins()
        } else {
            true
        }
    }

    pub fn get_next_ins(&mut self) -> Result<Ins> {
        let current_line = self.current_line.take().unwrap();
        self.current_line = self.lines.next();
        if current_line.is_ok() {
            Self::to_ins(current_line.unwrap())
        } else {
            Result::Err(ParseError {message: current_line.unwrap_err().to_string()})
        }
    }

    fn to_ins(ins: String) -> Result<Ins> {
        let ins = ins.split("//").nth(0).unwrap().trim();
        if ins.starts_with("@") {
            Ok(Ins::AIns { symbol: ins.split("@").nth(1).unwrap().to_string()})

        } else if ins.starts_with("(") {
            Ok(Ins::LIns {
                symbol: ins
                    .split("(").nth(1).unwrap()
                    .split(")").nth(0).unwrap()
                    .to_string()
            })

        } else if let Some(_) = ins.find("=") {
            let mut tokens = ins.split("=");
            let dest = Some(tokens.nth(0).unwrap().to_string());
            let comp = tokens.nth(0).unwrap().to_string();
            let jump = None;
            Ok(Ins::CIns { dest, comp, jump })

        } else if let Some(_) = ins.find(";") {
            let mut tokens = ins.split(";");
            let dest = None;
            let comp = tokens.nth(0).unwrap().to_string();
            let jump = Some(tokens.nth(0).unwrap().to_string());
            Ok(Ins::CIns { dest, comp, jump })

        } else {
            Err(ParseError { message: format!("Cannot parse instruction: {}", ins) })
        }
    }
}