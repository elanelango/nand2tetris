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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
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
@THAT
A=M
M=D
// push constant
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@1
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
@1
D=A
@THAT
M=M-D
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
@2
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
(FibonacciSeries$MAIN_LOOP_START)
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
@FibonacciSeries$COMPUTE_ELEMENT
0;JMP
(l1)
@FibonacciSeries$END_PROGRAM
0;JMP
(FibonacciSeries$COMPUTE_ELEMENT)
// push that
@THAT
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
// segment base move
@2
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
@2
D=A
@THAT
M=M-D
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
M=M+D
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@THAT
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
@FibonacciSeries$MAIN_LOOP_START
0;JMP
(FibonacciSeries$END_PROGRAM)
