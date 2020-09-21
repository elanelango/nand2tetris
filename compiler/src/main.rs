extern crate itertools;
extern crate quick_xml;

mod compile_engine;
mod grammar;
mod symtable;
mod token_xml;
mod tokenizer;
mod vm_writer;

use compile_engine::CompileEngine;
use itertools::Itertools;
use std::ffi::OsString;
use std::fs;
use std::fs::File;
use std::io;
use std::io::Write;
use std::path::Path;
use token_xml::TokenXml;
use tokenizer::Tokens;

fn main() -> io::Result<()> {
    let args: Vec<OsString> = std::env::args_os().collect();
    if args.len() != 2 {
        writeln!(io::stderr(), "Usage: compiler <path/.jack file>")?;
    }
    let input_path = Path::new(&args[1]);
    let meta = fs::metadata(input_path).unwrap();
    let jack_files = if meta.is_dir() {
        fs::read_dir(input_path)
            .unwrap()
            .filter_map(Result::ok)
            .filter_map(|entry| {
                if let Some(ext) = entry.path().extension() {
                    if ext == "jack" {
                        return Some((entry.path(), File::open(entry.path()).unwrap()));
                    }
                }
                None
            })
            .collect()
    } else {
        vec![(input_path.to_owned(), File::open(input_path).unwrap())]
    };

    for (jack_path, jack_file) in jack_files {
        println!("Compiling {:?}...", jack_path);
        let (tokens1, tokens2) = Tokens::tokenize(jack_file).tee();

        let jack_file_stem = jack_path.file_stem().unwrap().to_owned();
        let mut tokens_out_path = OsString::from(jack_file_stem.clone());
        tokens_out_path.push("T.xml");
        let tokens_out_path = jack_path.parent().unwrap().join(tokens_out_path);

        let tokens_file = File::create(tokens_out_path).unwrap();

        let mut token_xml = TokenXml::new(tokens_file);
        for token in tokens1 {
            token_xml.add_token(token).unwrap();
        }
        token_xml.end();

        let mut compile_out_path = OsString::from(jack_file_stem);
        compile_out_path.push(".vm");
        let compile_out_path = jack_path.parent().unwrap().join(compile_out_path);

        let compile_file = File::create(compile_out_path).unwrap();
        let class = CompileEngine::compile(tokens2);
        vm_writer::generate_vm_code(class, compile_file);
    }
    Ok(())
}
