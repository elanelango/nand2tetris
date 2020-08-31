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
@THAT
M=D
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@2
D=A
@THIS
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@THIS
A=M
M=D
// segment base restore
@2
D=A
@THIS
M=M-D
// push constant
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@6
D=A
@THAT
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@THAT
A=M
M=D
// segment base restore
@6
D=A
@THAT
M=M-D
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
