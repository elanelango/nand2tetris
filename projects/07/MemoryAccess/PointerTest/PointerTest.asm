// push constant
@3030
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
// pop pointer
@THIS
M=D
// push constant
@3040
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
// pop pointer
@THIS
A=A+1
M=D
// push constant
@32
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
M=D
// push constant
@46
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
A=A+1
M=D
// push pointer
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@1
D=A
// push pointer
@THIS
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
@2
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
M=M-D
@SP
M=M+1
// push: D = index
@6
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
