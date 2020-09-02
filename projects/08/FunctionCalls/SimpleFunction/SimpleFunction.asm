(SimpleFunction.test)
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
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
// push: D = index
@1
D=A
// push local
@LCL
A=M
A=D+A
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// push argument
@ARG
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
// push: D = index
@1
D=A
// push argument
@ARG
A=M
A=D+A
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
M=M-D
@SP
M=M+1
// FRAME = LCL
@LCL
D=M
@R13
M=D
// RET = *(LCL - 5)
@LCL
D=M
@5
A=D-A
D=M
@R14
M=D
// *ARG = pop()
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// SP = ARG + 1
D=A+1
@SP
M=D
// THAT = *(FRAME - 1)
@R13
M=M-1
A=M
D=M
@THAT
M=D
// THIS = *(FRAME - 2)
@R13
M=M-1
A=M
D=M
@THIS
M=D
// ARG = *(FRAME - 3)
@R13
M=M-1
A=M
D=M
@ARG
M=D
// LCL = *(FRAME - 4)
@R13
M=M-1
A=M
D=M
@LCL
M=D
// goto RET
@R14
A=M
0;JMP
