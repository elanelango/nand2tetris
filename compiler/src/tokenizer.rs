use std::fmt::Debug;
use std::fs::File;
use std::io::{BufRead, BufReader, Lines};
use std::vec;

const KEYWORDS: [&'static str; 21] = [
    "class",
    "constructor",
    "function",
    "method",
    "field",
    "static",
    "var",
    "int",
    "char",
    "boolean",
    "void",
    "true",
    "false",
    "null",
    "this",
    "let",
    "do",
    "if",
    "else",
    "while",
    "return",
];

const SYMBOLS: [char; 19] = [
    '{', '}', '(', ')', '[', ']', '.', ',', ';', '+', '~', '-', '*', '/', '&', '|', '<', '>', '=',
];

#[derive(Debug, Clone, PartialEq)]
pub enum Token {
    Keyword(String),
    Symbol(char),
    Identifier(String),
    Int(i16),
    Str(String),
}

#[derive(Debug)]
struct FileCharIter {
    lines: Lines<BufReader<File>>,
    curr_chars: Vec<char>,
}

impl FileCharIter {
    fn new(jack_file: File) -> Self {
        let lines = BufReader::new(jack_file).lines();
        FileCharIter {
            lines,
            curr_chars: vec![],
        }
    }

    fn peek(&mut self, index: usize) -> Option<char> {
        while index >= self.curr_chars.len() {
            let next_line = self.lines.next();
            if next_line.is_none() {
                break;
            }
            let mut next_chars = next_line.unwrap().unwrap().chars().collect::<Vec<char>>();
            next_chars.push('\n');
            self.curr_chars.reverse();
            self.curr_chars.append(&mut next_chars);
            self.curr_chars.reverse();
        }
        if index < self.curr_chars.len() {
            self.curr_chars
                .get(self.curr_chars.len() - 1 - index)
                .map(|&ch| ch)
        } else {
            None
        }
    }

    fn collect_while<F>(&mut self, pred: F) -> String
    where
        F: Fn(char) -> bool,
    {
        let mut peek_char = self.peek(0);
        let mut result = String::new();
        while peek_char.is_some() && pred(peek_char.unwrap()) {
            result.push(self.next().unwrap());
            peek_char = self.peek(0);
        }
        result
    }

    fn move_forward(&mut self, count: usize) {
        for _ in 0..count {
            self.next();
        }
    }

    fn skip_multiline_comment(&mut self) {
        let mut tok1 = self.peek(0);
        let mut tok2 = self.peek(1);
        while (tok1.is_some() && tok1.unwrap() != '*') || (tok2.is_some() && tok2.unwrap() != '/') {
            self.next();
            tok1 = tok2;
            tok2 = self.peek(1);
        }
        self.move_forward(2);
    }
}

impl Iterator for FileCharIter {
    type Item = char;

    fn next(&mut self) -> Option<Self::Item> {
        self.curr_chars.pop().or_else(|| {
            self.lines.next().and_then(|result| {
                self.curr_chars = result.unwrap().chars().collect::<Vec<char>>();
                self.curr_chars.push('\n');
                self.curr_chars.reverse();
                self.curr_chars.pop()
            })
        })
    }
}

#[derive(Debug)]
pub struct Tokens {
    chars: FileCharIter,
}

impl Tokens {
    pub fn tokenize(jack_file: File) -> Self {
        Tokens {
            chars: FileCharIter::new(jack_file),
        }
    }
}

impl Iterator for Tokens {
    type Item = Token;

    fn next(&mut self) -> Option<Self::Item> {
        loop {
            // skip the leading white spaces
            self.chars.collect_while(|ch| ch.is_whitespace());

            let ch = self.chars.peek(0);

            if ch.is_none() {
                return None;
            }
            let ch = ch.unwrap();

            if ch == '/' {
                let ch2 = self.chars.peek(1);
                if ch2.is_some() && ch2.unwrap() == '/' {
                    self.chars.move_forward(2);
                    self.chars.collect_while(|ch| ch != '\n');
                    continue;
                } else if ch2.is_some() && ch2.unwrap() == '*' {
                    self.chars.skip_multiline_comment();
                    continue;
                }
            }

            if SYMBOLS.contains(&ch) {
                self.chars.move_forward(1);
                return Some(Token::Symbol(ch));
            }

            if ch.is_digit(10) {
                let int_const = self
                    .chars
                    .collect_while(|ch| ch.is_digit(10))
                    .parse::<i16>()
                    .unwrap();
                return Some(Token::Int(int_const));
            }

            if ch.is_ascii_alphabetic() {
                let token = self
                    .chars
                    .collect_while(|ch| ch.is_ascii_alphabetic() || ch.is_digit(10) || ch == '_');

                if KEYWORDS.contains(&token.as_str()) {
                    return Some(Token::Keyword(token));
                } else {
                    return Some(Token::Identifier(token));
                }
            }

            if ch == '"' {
                self.chars.move_forward(1);
                let str_const = self.chars.collect_while(|ch| ch != '"');
                self.chars.move_forward(1);
                return Some(Token::Str(str_const));
            }
        }
    }
}
