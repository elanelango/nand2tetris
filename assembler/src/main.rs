#[macro_use]
extern crate lazy_static;

mod parser;
mod hack;
mod sym_table;

use std::ffi::OsString;
use std::fs::File;
use hack::Ins;
use parser::Parser;
use sym_table::SymTable;
use std::io::Write;

fn main() -> std::io::Result<()> {
    let args: Vec<OsString> = std::env::args_os().collect();
    if args.len() != 2 {
        writeln!(std::io::stderr(), "Usage: hackasm <assembly code path>").unwrap();
    }
    let inp_file = File::open(&args[1]).unwrap();
    let mut parser = Parser::new(inp_file);
    // let out_file = File::create("out.hack").unwrap();
    let mut instructions: Vec<Ins> = vec![];
    while parser.has_more_ins() {
        let ins = parser.get_next_ins();
        instructions.push(ins.unwrap());
    }

    let mut sym_table = SymTable::new();
    sym_table.load_labels(&instructions);

    for ins in instructions {
        if let Ins::LIns {..} = ins {
            continue;
        }
        println!("{}", ins.to_bin_str(&mut sym_table));
    }
    Ok(())
}
