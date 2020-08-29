// push constant
@10
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
// pop local
@LCL
A=M
M=D
// push constant
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@22
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
// pop argument
@ARG
A=M
A=A+1
A=A+1
M=D
// pop
@SP
M=M-1
A=M
D=M
// pop argument
@ARG
A=M
A=A+1
M=D
// push constant
@36
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
// pop this
@THIS
A=M
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// push constant
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@45
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
// pop that
@THAT
A=M
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
// pop
@SP
M=M-1
A=M
D=M
// pop that
@THAT
A=M
A=A+1
A=A+1
M=D
// push constant
@510
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
//pop temp
@R5
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
A=A+1
M=D
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
@5
D=A
// push that
@THAT
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
// push: D = index
@6
D=A
// push this
@THIS
A=M
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@6
D=A
// push this
@THIS
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
// push: D = index
@6
D=A
//push temp
@R5
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
