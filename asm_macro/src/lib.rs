extern crate proc_macro;

use proc_macro::{Literal, TokenStream, TokenTree};

#[proc_macro]
pub fn hack(input: TokenStream) -> TokenStream {
    let out_literal: String = input
        .into_iter()
        .map(|token_tree| {
            if let TokenTree::Punct(punct) = &token_tree {
                if punct.as_char() == ',' {
                    return "\n".to_owned();
                }
            }
            token_tree.to_string()
        })
        .collect();
    let out_literal = out_literal.replace("\"", "");
    TokenStream::from(TokenTree::from(Literal::string(out_literal.as_str())))
}
