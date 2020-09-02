#[macro_use]
extern crate lazy_static;
extern crate asm_macro;

mod code_writer;
mod parser;

use code_writer::CodeWriter;
use std::ffi::OsString;
use std::fs;
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
    let meta = fs::metadata(vm_file_path).unwrap();
    let vm_files = if meta.is_dir() {
        fs::read_dir(vm_file_path)
            .unwrap()
            .filter_map(Result::ok)
            .filter(|entry| {
                if let Some(ext) = entry.path().extension() {
                    ext == "vm"
                } else {
                    false
                }
            })
            .map(|entry| (entry.path(), File::open(entry.path()).unwrap()))
            .collect()
    } else {
        vec![(vm_file_path.to_owned(), File::open(vm_file_path).unwrap())]
    };

    let asm_file_path = if meta.is_dir() {
        let mut name = vm_file_path.file_name().unwrap().to_owned();
        name.push(".asm");
        vm_file_path.to_owned().join(name)
    } else {
        let mut name = vm_file_path.file_stem().unwrap().to_owned();
        name.push(".asm");
        vm_file_path.parent().unwrap().join(name)
    };

    let asm_file = File::create(asm_file_path).unwrap();
    let mut writer = CodeWriter::new(asm_file);

    for (vm_file_path, vm_file) in vm_files {
        println!("Translating {:?}...", vm_file_path);
        let commands = parser::commands(vm_file);
        writer.write_code(vm_file_path, commands);
    }
    Ok(())
}
