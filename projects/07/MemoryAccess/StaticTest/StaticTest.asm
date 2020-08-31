// push constant
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@888
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
// pop static
@StaticTest.8
M=D
// pop
@SP
M=M-1
A=M
D=M
// pop static
@StaticTest.3
M=D
// pop
@SP
M=M-1
A=M
D=M
// pop static
@StaticTest.1
M=D
// push static
@StaticTest.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@StaticTest.1
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
// push static
@StaticTest.8
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
