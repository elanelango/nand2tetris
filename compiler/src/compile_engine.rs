use crate::grammar::*;
use crate::tokenizer::Token;
use std::fmt::Debug;

pub struct CompileEngine {}

struct Engine<T>
where
    T: Iterator<Item = Token> + Debug,
{
    tokens: T,
    token_buf: Vec<Token>,
}

impl CompileEngine {
    pub fn compile<T>(tokens: T) -> Class
    where
        T: Iterator<Item = Token> + Debug,
    {
        let mut engine = Engine {
            tokens,
            token_buf: vec![],
        };
        engine.compile_class()
    }
}

fn unexpected_token(token: Token) -> ! {
    panic!("Unexpected token {:?}!", token);
}

impl<T> Engine<T>
where
    T: Iterator<Item = Token> + Debug,
{
    fn compile_class(&mut self) -> Class {
        self.read_keyword(Some("class"));
        let name = self.read_identifier();
        self.read_symbol('{');

        let (static_vars, field_vars) = self.compile_class_vars();
        let class = Class {
            name,
            static_vars: static_vars,
            field_vars: field_vars,
            subroutines: self.compile_subroutines(),
        };
        class
    }

    fn compile_class_vars(&mut self) -> (Vec<Var>, Vec<Var>) {
        let mut static_vars = vec![];
        let mut field_vars = vec![];
        loop {
            let keyword = self
                .peek_keyword(0)
                .cloned()
                .filter(|keyword| keyword.as_str() == "static" || keyword.as_str() == "field");
            if keyword.is_none() {
                break;
            }
            self.next_token().unwrap();
            let class_var_kind = keyword.unwrap();
            let vtype = self.read_type();
            loop {
                let name = self.read_identifier();
                let var = Var {
                    vtype: vtype.clone(),
                    name,
                };
                if class_var_kind == "static" {
                    static_vars.push(var);
                } else {
                    field_vars.push(var);
                }
                let token = self
                    .next_token()
                    .expect("Unexpected end of class var declaration line");
                if let Token::Symbol(';') = token {
                    break;
                } else if token != Token::Symbol(',') {
                    panic!("Expected ',', Found {:?}", token);
                }
            }
        }
        (static_vars, field_vars)
    }

    fn compile_subroutines(&mut self) -> Vec<Subroutine> {
        let sub_kinds = ["constructor", "function", "method"];
        let mut subroutines = vec![];
        loop {
            let kind = self.peek_keyword(0);
            if kind.is_some() && sub_kinds.iter().any(|k| k == kind.unwrap()) {
                subroutines.push(self.compile_subroutine());
            } else {
                break;
            }
        }
        subroutines
    }

    fn compile_subroutine(&mut self) -> Subroutine {
        let kind = self.read_sub_kind();
        let rtype = self.read_type();
        let name = self.read_identifier();
        let params = self.compile_param_list();
        self.read_symbol('{');
        let locals = self.compile_locals();
        let stmts = self.compile_stmts();
        self.read_symbol('}');

        Subroutine {
            kind,
            rtype,
            name,
            params,
            locals,
            stmts,
        }
    }

    fn compile_param_list(&mut self) -> Vec<Var> {
        let mut params = vec![];
        self.read_symbol('(');
        loop {
            if let Some(Token::Symbol(')')) = self.peek_token(0) {
                break;
            }
            params.push(self.compile_var_dec());
            if let Some(Token::Symbol(',')) = self.peek_token(0) {
                self.read_symbol(',');
            }
        }
        self.read_symbol(')');
        params
    }

    fn compile_locals(&mut self) -> Vec<Var> {
        let mut locals = vec![];
        loop {
            let keyword = self
                .peek_keyword(0)
                .cloned()
                .filter(|keyword| keyword == "var");
            if keyword.is_none() {
                break;
            }
            self.next_token().unwrap();
            let vtype = self.read_type();
            loop {
                let name = self.read_identifier();
                let var = Var {
                    vtype: vtype.clone(),
                    name,
                };
                locals.push(var);
                let token = self
                    .next_token()
                    .expect("Unexpected end of local var declaration line");
                if let Token::Symbol(';') = token {
                    break;
                } else if token != Token::Symbol(',') {
                    panic!("Expected ',', Found {:?}", token);
                }
            }
        }
        locals
    }

    fn compile_var_dec(&mut self) -> Var {
        let vtype = self.read_type();
        let name = self.read_identifier();
        Var { vtype, name }
    }

    fn compile_stmts(&mut self) -> Vec<Box<dyn Stmt>> {
        let stmt_kinds = ["let", "if", "while", "do", "return"];
        let mut stmts = vec![];
        loop {
            let kind = self.peek_keyword(0);
            if kind.is_some() && stmt_kinds.iter().any(|k| k == kind.unwrap()) {
                stmts.push(self.compile_stmt());
            } else {
                break;
            }
        }
        stmts
    }

    fn compile_stmt(&mut self) -> Box<dyn Stmt> {
        let stmt_kind = self.peek_keyword(0);
        let stmt: Box<dyn Stmt> = match stmt_kind.as_ref().unwrap().as_str() {
            "do" => Box::new(self.compile_do()),
            "return" => Box::new(self.compile_return()),
            "let" => Box::new(self.compile_let()),
            "if" => Box::new(self.compile_if()),
            "while" => Box::new(self.compile_while()),
            _ => panic!("Unexpected keyword {}", stmt_kind.as_ref().unwrap()),
        };
        if let Some(Token::Symbol(';')) = self.peek_token(0) {
            self.read_symbol(';');
        }
        stmt
    }

    fn compile_do(&mut self) -> Do {
        self.read_keyword(Some("do"));
        let sub_call = self.compile_sub_call();
        Do(sub_call)
    }

    fn compile_return(&mut self) -> Return {
        self.read_keyword(Some("return"));
        let token = self.peek_token(0).unwrap();
        let expr = if token != &Token::Symbol(';') {
            Some(self.compile_expr())
        } else {
            None
        };
        Return(expr)
    }

    fn compile_let(&mut self) -> Let {
        self.read_keyword(Some("let"));
        let lvalue = self.compile_var_expr();
        self.read_symbol('=');
        let rvalue = self.compile_expr();
        Let { lvalue, rvalue }
    }

    fn compile_if(&mut self) -> If {
        self.read_keyword(Some("if"));
        self.read_symbol('(');
        let cond = self.compile_expr();
        self.read_symbol(')');
        self.read_symbol('{');
        let true_stmts = self.compile_stmts();
        self.read_symbol('}');
        let false_stmts = self
            .peek_keyword(0)
            .cloned()
            .filter(|keyword| keyword == "else")
            .and_then(|_| {
                self.next_token().unwrap();
                self.read_symbol('{');
                let stmts = Some(self.compile_stmts());
                self.read_symbol('}');
                stmts
            });
        If {
            cond,
            true_stmts,
            false_stmts,
        }
    }

    fn compile_while(&mut self) -> While {
        self.read_keyword(Some("while"));
        self.read_symbol('(');
        let cond = self.compile_expr();
        self.read_symbol(')');
        self.read_symbol('{');
        let stmts = self.compile_stmts();
        self.read_symbol('}');
        While { cond, stmts }
    }

    fn compile_var_expr(&mut self) -> VarExpr {
        let name = self.read_identifier();
        let expr = if let Some(Token::Symbol('[')) = self.peek_token(0) {
            self.read_symbol('[');
            let expr = Some(self.compile_expr());
            self.read_symbol(']');
            expr
        } else {
            None
        };
        VarExpr { name, index: expr }
    }

    fn compile_sub_call(&mut self) -> SubCall {
        let recv_name = self
            .peek_token(1)
            .cloned()
            .filter(|token| token == &Token::Symbol('.'))
            .and_then(|_| {
                let name = self.next_token().map(|token| {
                    if let Token::Identifier(identifier) = token {
                        identifier
                    } else {
                        panic!("Expected identifier, found {:?}", token);
                    }
                });
                self.read_symbol('.');
                name
            });
        let sub_name = self.read_identifier();
        let args = self.compile_expr_list();

        SubCall {
            recv_name,
            sub_name,
            args,
        }
    }

    fn compile_expr_list(&mut self) -> Vec<Expr> {
        let mut expr_list = vec![];
        self.read_symbol('(');
        loop {
            if let Some(Token::Symbol(')')) = self.peek_token(0) {
                break;
            }
            expr_list.push(self.compile_expr());
            if let Some(Token::Symbol(',')) = self.peek_token(0) {
                self.read_symbol(',');
            }
        }
        self.read_symbol(')');
        expr_list
    }

    fn compile_expr(&mut self) -> Expr {
        let lterm = Box::new(self.compile_term());
        let op = self.peek_binary_op(0);
        let rterm = if op.is_some() {
            self.next_token().unwrap();
            Some(Box::new(self.compile_term()))
        } else {
            None
        };
        Expr { lterm, op, rterm }
    }

    fn compile_term(&mut self) -> Term {
        let token = self.peek_token(0).cloned().unwrap();
        if let Token::Symbol('(') = token {
            self.read_symbol('(');
            let expr = self.compile_expr();
            self.read_symbol(')');
            Term::Expr(expr)
        } else if let Token::Int(int_const) = token {
            self.next_token().unwrap();
            Term::Int(int_const)
        } else if let Token::Str(str_const) = token {
            self.next_token().unwrap();
            Term::Str(str_const)
        } else if let Token::Keyword(keyword_const) = token {
            self.next_token().unwrap();
            match keyword_const.as_str() {
                "true" => Term::Keyword(KeywordConst::True),
                "false" => Term::Keyword(KeywordConst::False),
                "null" => Term::Keyword(KeywordConst::Null),
                "this" => Term::Keyword(KeywordConst::This),
                _ => panic!("Unexpected keyword term: {}", keyword_const),
            }
        } else if token == Token::Symbol('-') || token == Token::Symbol('~') {
            self.next_token().unwrap();
            let term = Box::new(self.compile_term());
            if token == Token::Symbol('-') {
                Term::Unary(UnaryOp::Neg, term)
            } else {
                Term::Unary(UnaryOp::Not, term)
            }
        } else if let Token::Identifier(_) = token {
            self.compile_call_or_var_expr()
        } else {
            panic!("Unexpected Term: {:#?}", token);
        }
    }

    fn compile_call_or_var_expr(&mut self) -> Term {
        let token = self.peek_token(1).unwrap();
        if token == &Token::Symbol('.') || token == &Token::Symbol('(') {
            Term::Call(self.compile_sub_call())
        } else {
            Term::Var(self.compile_var_expr())
        }
    }
    fn peek_binary_op(&mut self, index: usize) -> Option<BinaryOp> {
        let token = self.peek_token(index);
        if let Some(Token::Symbol(symbol)) = token {
            match symbol {
                '+' => Some(BinaryOp::Add),
                '-' => Some(BinaryOp::Sub),
                '*' => Some(BinaryOp::Mul),
                '/' => Some(BinaryOp::Div),
                '&' => Some(BinaryOp::And),
                '|' => Some(BinaryOp::Or),
                '<' => Some(BinaryOp::Lt),
                '>' => Some(BinaryOp::Gt),
                '=' => Some(BinaryOp::Eq),
                _ => None,
            }
        } else {
            None
        }
    }
    fn read_sub_kind(&mut self) -> SubKind {
        let kind = self.read_keyword(None);
        match kind.as_str() {
            "constructor" => SubKind::Constructor,
            "function" => SubKind::Function,
            "method" => SubKind::Method,
            _ => panic!("Unexpected keyword {}", kind),
        }
    }

    fn read_type(&mut self) -> Type {
        let rtype = self
            .peek_keyword(0)
            .and_then(|keyword| match keyword.as_str() {
                "int" => Some(Type::Int),
                "char" => Some(Type::Char),
                "boolean" => Some(Type::Bool),
                "void" => Some(Type::Void),
                _ => panic!("Unexpected type"),
            });

        let rtype = rtype
            .or_else(|| {
                self.peek_identifier(0)
                    .map(|identifier| Type::Class(identifier.clone()))
            })
            .expect("Expected function return type");
        self.next_token();
        rtype
    }

    fn read_keyword(&mut self, expected: Option<&str>) -> String {
        let token = self.next_token().expect("Expected keyword");
        if let Token::Keyword(keyword) = token {
            if expected.is_some() && &keyword != expected.as_ref().unwrap() {
                panic!("Expected '{}', Found '{}'", expected.unwrap(), keyword);
            }
            keyword
        } else {
            unexpected_token(token);
        }
    }

    fn peek_keyword(&mut self, index: usize) -> Option<&String> {
        let token = self.peek_token(index);
        token.and_then(|token| {
            if let Token::Keyword(keyword) = token {
                Some(keyword)
            } else {
                None
            }
        })
    }

    fn read_identifier(&mut self) -> String {
        let token = self.next_token().expect("Expected identifier");
        if let Token::Identifier(name) = token {
            name
        } else {
            unexpected_token(token);
        }
    }

    fn peek_identifier(&mut self, index: usize) -> Option<&String> {
        let token = self.peek_token(index);
        token.and_then(|token| {
            if let Token::Identifier(identifier) = token {
                Some(identifier)
            } else {
                None
            }
        })
    }

    fn read_symbol(&mut self, expected: char) {
        let token = self
            .next_token()
            .expect(format!("Expected symbol {}", expected).as_str());
        if let Token::Symbol(symbol) = token {
            if symbol != expected {
                panic!("Expected '{}', Found '{}'", expected, symbol);
            }
        } else {
            unexpected_token(token);
        }
    }

    fn next_token(&mut self) -> Option<Token> {
        if self.token_buf.len() > 0 {
            Some(self.token_buf.remove(0))
        } else {
            self.tokens.next()
        }
    }

    fn peek_token(&mut self, index: usize) -> Option<&Token> {
        while self.token_buf.is_empty() || index > (self.token_buf.len() - 1) {
            if let Some(token) = self.tokens.next() {
                self.token_buf.push(token);
            } else {
                break;
            }
        }

        self.token_buf.get(index)
    }
}
