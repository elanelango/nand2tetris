// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
(BasicLoop$LOOP_START)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push local
@LCL
A=M
D=M
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
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@1
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
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l1
D;JEQ
@BasicLoop$LOOP_START
0;JMP
(l1)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
