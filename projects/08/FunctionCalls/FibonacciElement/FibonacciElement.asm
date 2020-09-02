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
(Main.fibonacci)
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
// logical operation
D=M-D
@l2
D;JLT
@SP
A=M
M=0
@l3
0;JMP
(l2)
@SP
A=M
M=-1
(l3)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l4
D;JEQ
@Main.fibonacci$IF_TRUE
0;JMP
(l4)
@Main.fibonacci$IF_FALSE
0;JMP
(Main.fibonacci$IF_TRUE)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
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
(Main.fibonacci$IF_FALSE)
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
// push return-address
@l5
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
@Main.fibonacci
0;JMP
(l5)
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
// push return-address
@l6
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
@Main.fibonacci
0;JMP
(l6)
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
(Sys.init)
// push constant
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l7
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
@Main.fibonacci
0;JMP
(l7)
(Sys.init$WHILE)
@Sys.init$WHILE
0;JMP
