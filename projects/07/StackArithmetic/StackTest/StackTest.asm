// push constant
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l1
D;JEQ
@SP
A=M
M=0
@l2
0;JMP
(l1)
@SP
A=M
M=-1
(l2)
@SP
M=M+1
// push constant
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l3
D;JEQ
@SP
A=M
M=0
@l4
0;JMP
(l3)
@SP
A=M
M=-1
(l4)
@SP
M=M+1
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l5
D;JEQ
@SP
A=M
M=0
@l6
0;JMP
(l5)
@SP
A=M
M=-1
(l6)
@SP
M=M+1
// push constant
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l7
D;JLT
@SP
A=M
M=0
@l8
0;JMP
(l7)
@SP
A=M
M=-1
(l8)
@SP
M=M+1
// push constant
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@892
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l9
D;JLT
@SP
A=M
M=0
@l10
0;JMP
(l9)
@SP
A=M
M=-1
(l10)
@SP
M=M+1
// push constant
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@891
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l11
D;JLT
@SP
A=M
M=0
@l12
0;JMP
(l11)
@SP
A=M
M=-1
(l12)
@SP
M=M+1
// push constant
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l13
D;JGT
@SP
A=M
M=0
@l14
0;JMP
(l13)
@SP
A=M
M=-1
(l14)
@SP
M=M+1
// push constant
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l15
D;JGT
@SP
A=M
M=0
@l16
0;JMP
(l15)
@SP
A=M
M=-1
(l16)
@SP
M=M+1
// push constant
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
// logical operation
D=M-D
@l17
D;JGT
@SP
A=M
M=0
@l18
0;JMP
(l17)
@SP
A=M
M=-1
(l18)
@SP
M=M+1
// push constant
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M+D
@SP
M=M+1
// push constant
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=-M
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1
// push constant
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// binary operation
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M|D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
