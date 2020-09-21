use crate::grammar::*;
use std::collections::HashMap;

#[derive(Clone)]
pub enum VarKind {
    Argument,
    Local,
    Static,
    Field,
}

impl VarKind {
    pub fn seg_name(&self) -> &str {
        match self {
            VarKind::Argument => "argument",
            VarKind::Local => "local",
            VarKind::Static => "static",
            VarKind::Field => "this",
        }
    }
}

#[derive(Clone)]
pub struct VarEntry {
    pub vtype: Type,
    pub kind: VarKind,
    pub index: usize,
}

pub struct SymTable {
    pub class_name: String,
    class: HashMap<String, VarEntry>,
    local: HashMap<String, VarEntry>,
}

impl SymTable {
    pub fn new(class_name: &str) -> Self {
        SymTable {
            class_name: class_name.to_owned(),
            class: HashMap::new(),
            local: HashMap::new(),
        }
    }

    pub fn load_class_symbols(&mut self, class: &Class) {
        for (index, static_var) in class.static_vars.iter().enumerate() {
            let name = static_var.name.clone();
            let vtype = static_var.vtype.clone();
            let kind = VarKind::Static;
            self.class.insert(name, VarEntry { vtype, kind, index });
        }

        for (index, field_var) in class.field_vars.iter().enumerate() {
            let name = field_var.name.clone();
            let vtype = field_var.vtype.clone();
            let kind = VarKind::Field;
            self.class.insert(name, VarEntry { vtype, kind, index });
        }
    }

    pub fn load_sub_symbols(&mut self, sub: &Subroutine) {
        self.local.clear();

        let mut arg_index = 0;
        if let SubKind::Method = sub.kind {
            self.local.insert(
                "this".to_owned(),
                VarEntry {
                    vtype: Type::Class(self.class_name.clone()),
                    kind: VarKind::Argument,
                    index: arg_index,
                },
            );
            arg_index += 1;
        }
        for param in sub.params.iter() {
            self.local.insert(
                param.name.clone(),
                VarEntry {
                    vtype: param.vtype.clone(),
                    kind: VarKind::Argument,
                    index: arg_index,
                },
            );
            arg_index += 1;
        }

        for (index, local) in sub.locals.iter().enumerate() {
            self.local.insert(
                local.name.clone(),
                VarEntry {
                    vtype: local.vtype.clone(),
                    kind: VarKind::Local,
                    index,
                },
            );
        }
    }

    pub fn lookup(&self, name: &str) -> Option<&VarEntry> {
        self.local.get(name).or_else(|| self.class.get(name))
    }
}
