use std::collections::HashMap;
use crate::sym_table::SymTable;

#[derive(Debug)]
pub enum Ins {
    AIns {
        symbol: String,
    },
    CIns {
        dest: Option<String>,
        comp: String,
        jump: Option<String>,
    },
    LIns {
        symbol: String,
    },
}

impl Ins {
    pub fn to_bin_str(&self, sym_table: &mut SymTable) -> String {
        match self {
            Self::AIns{symbol} =>
                if symbol.chars().take(1).all(char::is_alphabetic) {
                    format!("{:0>16b}", sym_table.get_address(symbol))
                } else {
                    format!("{:0>16b}", symbol.parse::<i32>().unwrap())
                },
            Self::CIns{dest, comp, jump} => {
                // println!("{}{:?}{:?}", comp, dest, jump);
                format!("111{}{}{}",
                    COMP_CODES[comp], DEST_CODES[dest], JUMP_CODES[jump])
            },
            Self::LIns{symbol: _} => "".to_owned()
        }
    }
}

lazy_static! {
    static ref DEST_CODES: HashMap<Option<String>, &'static str> = {
        [
            (None, "000"),
            (Some("M".to_owned()), "001"),
            (Some("D".to_owned()), "010"),
            (Some("MD".to_owned()), "011"),
            (Some("A".to_owned()), "100"),
            (Some("AM".to_owned()), "101"),
            (Some("AD".to_owned()), "110"),
            (Some("AMD".to_owned()), "111"),
        ].iter().cloned().collect()
    };

    static ref COMP_CODES: HashMap<String, &'static str> = {
        [
            ("0".to_owned(), "0101010"),
            ("1".to_owned(), "0111111"),
            ("-1".to_owned(), "0111010"),
            ("D".to_owned(), "0001100"),
            ("A".to_owned(), "0110000"),
            ("M".to_owned(), "1110000"),
            ("!D".to_owned(), "0001101"),
            ("!A".to_owned(), "0110001"),
            ("!M".to_owned(), "1110001"),
            ("-D".to_owned(), "0001111"),
            ("-A".to_owned(), "0110011"),
            ("-M".to_owned(), "1110011"),
            ("D+1".to_owned(), "0011111"),
            ("A+1".to_owned(), "0110111"),
            ("M+1".to_owned(), "1110111"),
            ("D-1".to_owned(), "0001110"),
            ("A-1".to_owned(), "0110010"),
            ("M-1".to_owned(), "1110010"),
            ("D+A".to_owned(), "0000010"),
            ("D+M".to_owned(), "1000010"),
            ("D-A".to_owned(), "0010011"),
            ("D-M".to_owned(), "1010011"),
            ("A-D".to_owned(), "0000111"),
            ("M-D".to_owned(), "1000111"),
            ("D&A".to_owned(), "0000000"),
            ("D&M".to_owned(), "1000000"),
            ("D|A".to_owned(), "0010101"),
            ("D|M".to_owned(), "1010101"),
        ].iter().cloned().collect()
    };

    static ref JUMP_CODES: HashMap<Option<String>, &'static str> = {
        [
            (None, "000"),
            (Some("JGT".to_owned()), "001"),
            (Some("JEQ".to_owned()), "010"),
            (Some("JGE".to_owned()), "011"),
            (Some("JLT".to_owned()), "100"),
            (Some("JNE".to_owned()), "101"),
            (Some("JLE".to_owned()), "110"),
            (Some("JMP".to_owned()), "111"),
        ].iter().cloned().collect()
    };
}