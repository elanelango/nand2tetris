extern crate asm_macro;

use asm_macro::hack;

fn main() {
    println!(hack!(A = D + A, M = M + "{index}"), index = 3);
}
