use std::any::Any;
use std::fmt::Debug;

#[derive(Debug)]
pub struct Class {
    pub name: String,
    pub static_vars: Vec<Var>,
    pub field_vars: Vec<Var>,
    pub subroutines: Vec<Subroutine>,
}

#[derive(Debug)]
pub struct Var {
    pub vtype: Type,
    pub name: String,
}

#[derive(Debug, Clone)]
pub enum Type {
    Int,
    Char,
    Bool,
    Class(String),
    Void,
}

#[derive(Debug)]
pub struct Subroutine {
    pub kind: SubKind,
    pub rtype: Type,
    pub name: String,
    pub params: Vec<Var>,
    pub locals: Vec<Var>,
    pub stmts: Vec<Box<dyn Stmt>>,
}

#[derive(Debug)]
pub enum SubKind {
    Constructor,
    Function,
    Method,
}

pub trait Stmt: Debug {
    fn kind(&self) -> StmtKind;
    fn as_any(&self) -> &dyn Any;
}

pub enum StmtKind {
    Let,
    If,
    While,
    Do,
    Return,
}

#[derive(Debug)]
pub struct Let {
    pub lvalue: VarExpr,
    pub rvalue: Expr,
}

impl Stmt for Let {
    fn kind(&self) -> StmtKind {
        StmtKind::Let
    }

    fn as_any(&self) -> &dyn Any {
        self
    }
}

#[derive(Debug)]
pub struct VarExpr {
    pub name: String,
    pub index: Option<Expr>,
}

#[derive(Debug)]
pub struct If {
    pub cond: Expr,
    pub true_stmts: Vec<Box<dyn Stmt>>,
    pub false_stmts: Option<Vec<Box<dyn Stmt>>>,
}

impl Stmt for If {
    fn kind(&self) -> StmtKind {
        StmtKind::If
    }

    fn as_any(&self) -> &dyn Any {
        self
    }
}

#[derive(Debug)]
pub struct While {
    pub cond: Expr,
    pub stmts: Vec<Box<dyn Stmt>>,
}

impl Stmt for While {
    fn kind(&self) -> StmtKind {
        StmtKind::While
    }

    fn as_any(&self) -> &dyn Any {
        self
    }
}

#[derive(Debug)]
pub struct Do(pub SubCall);

impl Stmt for Do {
    fn kind(&self) -> StmtKind {
        StmtKind::Do
    }

    fn as_any(&self) -> &dyn Any {
        self
    }
}

#[derive(Debug)]
pub struct Return(pub Option<Expr>);

impl Stmt for Return {
    fn kind(&self) -> StmtKind {
        StmtKind::Return
    }

    fn as_any(&self) -> &dyn Any {
        self
    }
}

#[derive(Debug)]
pub struct Expr {
    pub lterm: Box<Term>,
    pub op: Option<BinaryOp>,
    pub rterm: Option<Box<Term>>,
}

#[derive(Debug)]
pub enum BinaryOp {
    Add,
    Sub,
    Mul,
    Div,
    And,
    Or,
    Lt,
    Gt,
    Eq,
}

#[derive(Debug)]
pub enum Term {
    Int(i16),
    Str(String),
    Keyword(KeywordConst),
    Var(VarExpr),
    Call(SubCall),
    Expr(Expr),
    Unary(UnaryOp, Box<Term>),
}

#[derive(Debug)]
pub enum KeywordConst {
    True,
    False,
    Null,
    This,
}

#[derive(Debug)]
pub enum UnaryOp {
    Neg,
    Not,
}

#[derive(Debug)]
pub struct SubCall {
    pub recv_name: Option<String>,
    pub sub_name: String,
    pub args: Vec<Expr>,
}
