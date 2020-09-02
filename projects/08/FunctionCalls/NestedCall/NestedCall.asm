@256
D=A
@SP
M=D
// push return-address
@l1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP-n-5
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto f
@Sys.init
0;JMP
(l1)
(Sys.init)
// push constant
@4000
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
@5000
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
// push return-address
@l2
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP-n-5
D=M
@0
D=D-A
@5
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto f
@Sys.main
0;JMP
(l2)
// pop
@SP
M=M-1
A=M
D=M
@R6
M=D
(Sys.init$LOOP)
@Sys.init$LOOP
0;JMP
(Sys.main)
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
// push constant
@4001
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
@5001
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
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@1
D=A
@LCL
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
// segment base restore
@1
D=A
@LCL
M=M-D
// push constant
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@2
D=A
@LCL
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
// segment base restore
@2
D=A
@LCL
M=M-D
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@3
D=A
@LCL
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
// segment base restore
@3
D=A
@LCL
M=M-D
// push constant
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// ARG = SP-n-5
D=M
@1
D=D-A
@5
D=D-A
@ARG
M=D
// LCL = SP
@SP
D=M
@LCL
M=D
// goto f
@Sys.add12
0;JMP
(l3)
// pop
@SP
M=M-1
A=M
D=M
@R5
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
// push: D = index
@2
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
// push: D = index
@3
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
// push: D = index
@4
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
M=M+D
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
(Sys.add12)
// push constant
@4002
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
@5002
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
@12
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
