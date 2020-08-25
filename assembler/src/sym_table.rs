use std::collections::HashMap;
use crate::hack::Ins;

pub struct SymTable {
    free_ram_address: i16,
    table: HashMap<String, i16>,
}

impl SymTable {
    pub fn new() -> Self {
        SymTable {
            free_ram_address: 16,
            table: [
                ("SP".to_owned(), 0),
                ("LCL".to_owned(), 1),
                ("ARG".to_owned(), 2),
                ("THIS".to_owned(), 3),
                ("THAT".to_owned(), 4),
                ("R0".to_owned(), 0),
                ("R1".to_owned(), 1),
                ("R2".to_owned(), 2),
                ("R3".to_owned(), 3),
                ("R4".to_owned(), 4),
                ("R5".to_owned(), 5),
                ("R6".to_owned(), 6),
                ("R7".to_owned(), 7),
                ("R8".to_owned(), 8),
                ("R9".to_owned(), 9),
                ("R10".to_owned(), 10),
                ("R11".to_owned(), 11),
                ("R12".to_owned(), 12),
                ("R13".to_owned(), 13),
                ("R14".to_owned(), 14),
                ("R15".to_owned(), 15),
                ("SCREEN".to_owned(), 16384),
                ("KBD".to_owned(), 24576),
            ].iter().cloned().collect(),
        }
    }

    pub fn load_labels(&mut self, instructions: &Vec<Ins>) {
        let mut curr_rom_address = 0;
        for ins in instructions {
            if let Ins::LIns{symbol} = ins {
                self.table.insert(symbol.clone(), curr_rom_address);
            } else {
                curr_rom_address += 1;
            }
        }
    }

    pub fn get_address(&mut self, variable: &str) -> i16 {
        if !self.table.contains_key(variable) {
            self.table.insert(variable.to_owned(), self.free_ram_address);
            self.free_ram_address += 1;
        }
        self.table[variable]
    }
}