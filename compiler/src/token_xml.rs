use crate::tokenizer::Token;
use quick_xml;
use quick_xml::events::{BytesEnd, BytesStart, BytesText, Event};
use std::fs::File;

pub struct TokenXml {
    writer: quick_xml::Writer<File>,
}

impl TokenXml {
    pub fn new(tokens_file: File) -> Self {
        let writer = quick_xml::Writer::new_with_indent(tokens_file, b' ', 4);
        let mut token_xml = TokenXml { writer };
        token_xml
            .writer
            .write_event(Event::Start(BytesStart::borrowed_name(b"tokens")))
            .unwrap();
        token_xml
    }

    pub fn add_token(&mut self, token: Token) -> quick_xml::Result<usize> {
        let (tag_name, value) = match token {
            Token::Identifier(variable) => ("identifier", variable),
            Token::Int(int_const) => ("integerConstant", int_const.to_string()),
            Token::Keyword(keyword) => ("keyword", keyword),
            Token::Str(str_constant) => ("stringConstant", str_constant),
            Token::Symbol(symbol) => ("symbol", symbol.to_string()),
        };

        self.writer
            .write_event(Event::Start(BytesStart::borrowed_name(tag_name.as_bytes())))?;
        self.writer
            .write_event(Event::Text(BytesText::from_plain_str(value.as_str())))?;
        self.writer
            .write_event(Event::End(BytesEnd::borrowed(tag_name.as_bytes())))
    }

    pub fn end(&mut self) {
        self.writer
            .write_event(Event::End(BytesEnd::borrowed(b"tokens")))
            .unwrap();
    }
}
