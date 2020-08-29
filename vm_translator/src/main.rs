#[macro_use]
extern crate lazy_static;

mod code_writer;
mod parser;

use code_writer::CodeWriter;
use std::ffi::OsString;
use std::fs::File;
use std::io;
use std::io::Write;
use std::path::Path;

fn main() -> io::Result<()> {
    let args: Vec<OsString> = std::env::args_os().collect();
    if args.len() != 2 {
        writeln!(io::stderr(), "Usage: vm_translator <vm code path>")?;
    }
    let vm_file_path = Path::new(&args[1]);
    let vm_file = File::open(vm_file_path)?;

    let mut asm_file_name = vm_file_path.file_stem().unwrap().to_owned();
    asm_file_name.push(".asm");
    let asm_file_path = vm_file_path.parent().unwrap().join(asm_file_name);
    let asm_file = File::create(asm_file_path)?;

    let commands = parser::commands(vm_file);
    let mut writer = CodeWriter::new(asm_file);
    writer.write_code(vm_file_path, commands);
    Ok(())
}
