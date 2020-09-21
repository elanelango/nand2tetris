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
(String.new)
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
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
@Memory.alloc
0;JMP
(l2)
// pop
@SP
M=M-1
A=M
D=M
@THIS
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
@0
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
D;JLT
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
@SP
M=M-1
A=M
D=M
@l5
D;JEQ
@String.new$IF_TRUE0
0;JMP
(l5)
@String.new$IF_FALSE0
0;JMP
(String.new$IF_TRUE0)
// push constant
@14
D=A
@SP
A=M
M=D
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
@Sys.error
0;JMP
(l6)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.new$IF_FALSE0)
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
@0
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
D;JGT
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
@SP
M=M-1
A=M
D=M
@l9
D;JEQ
@String.new$IF_TRUE1
0;JMP
(l9)
@String.new$IF_FALSE1
0;JMP
(String.new$IF_TRUE1)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l10
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
@Array.new
0;JMP
(l10)
// segment base move
@1
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
@1
D=A
@THIS
M=M-D
(String.new$IF_FALSE1)
// push argument
@ARG
A=M
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
@THIS
A=M
M=D
// push constant
@0
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
// push pointer
@THIS
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
(String.dispose)
// push argument
@ARG
A=M
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
@THIS
M=D
// push this
@THIS
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
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
D;JGT
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
@SP
M=M-1
A=M
D=M
@l13
D;JEQ
@String.dispose$IF_TRUE0
0;JMP
(l13)
@String.dispose$IF_FALSE0
0;JMP
(String.dispose$IF_TRUE0)
// push: D = index
@1
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
// push return-address
@l14
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
@Array.dispose
0;JMP
(l14)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.dispose$IF_FALSE0)
// push pointer
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l15
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
@Memory.deAlloc
0;JMP
(l15)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(String.length)
// push argument
@ARG
A=M
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
@THIS
M=D
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
(String.charAt)
// push argument
@ARG
A=M
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
@THIS
M=D
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
// push constant
@0
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
@l16
D;JLT
@SP
A=M
M=0
@l17
0;JMP
(l16)
@SP
A=M
M=-1
(l17)
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
// logical operation
D=M-D
@l18
D;JGT
@SP
A=M
M=0
@l19
0;JMP
(l18)
@SP
A=M
M=-1
(l19)
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
// logical operation
D=M-D
@l20
D;JEQ
@SP
A=M
M=0
@l21
0;JMP
(l20)
@SP
A=M
M=-1
(l21)
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
@SP
M=M-1
A=M
D=M
@l22
D;JEQ
@String.charAt$IF_TRUE0
0;JMP
(l22)
@String.charAt$IF_FALSE0
0;JMP
(String.charAt$IF_TRUE0)
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l23
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
@Sys.error
0;JMP
(l23)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.charAt$IF_FALSE0)
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
// push: D = index
@1
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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push that
@THAT
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
(String.setCharAt)
// push argument
@ARG
A=M
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
@THIS
M=D
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
// push constant
@0
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
@l24
D;JLT
@SP
A=M
M=0
@l25
0;JMP
(l24)
@SP
A=M
M=-1
(l25)
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
// logical operation
D=M-D
@l26
D;JGT
@SP
A=M
M=0
@l27
0;JMP
(l26)
@SP
A=M
M=-1
(l27)
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
// logical operation
D=M-D
@l28
D;JEQ
@SP
A=M
M=0
@l29
0;JMP
(l28)
@SP
A=M
M=-1
(l29)
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
@SP
M=M-1
A=M
D=M
@l30
D;JEQ
@String.setCharAt$IF_TRUE0
0;JMP
(l30)
@String.setCharAt$IF_FALSE0
0;JMP
(String.setCharAt$IF_TRUE0)
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l31
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
@Sys.error
0;JMP
(l31)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.setCharAt$IF_FALSE0)
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
// push: D = index
@1
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
// push: D = index
@2
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@0
D=A
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
(String.appendChar)
// push argument
@ARG
A=M
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
@THIS
M=D
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
// push this
@THIS
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
// logical operation
D=M-D
@l32
D;JEQ
@SP
A=M
M=0
@l33
0;JMP
(l32)
@SP
A=M
M=-1
(l33)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l34
D;JEQ
@String.appendChar$IF_TRUE0
0;JMP
(l34)
@String.appendChar$IF_FALSE0
0;JMP
(String.appendChar$IF_TRUE0)
// push constant
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l35
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
@Sys.error
0;JMP
(l35)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.appendChar$IF_FALSE0)
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
// push: D = index
@1
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
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
// push pointer
@THIS
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
(String.eraseLastChar)
// push argument
@ARG
A=M
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
@THIS
M=D
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
// push constant
@0
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
@l36
D;JEQ
@SP
A=M
M=0
@l37
0;JMP
(l36)
@SP
A=M
M=-1
(l37)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l38
D;JEQ
@String.eraseLastChar$IF_TRUE0
0;JMP
(l38)
@String.eraseLastChar$IF_FALSE0
0;JMP
(String.eraseLastChar$IF_TRUE0)
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l39
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
@Sys.error
0;JMP
(l39)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.eraseLastChar$IF_FALSE0)
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
@0
D=A
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
(String.intValue)
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
// push argument
@ARG
A=M
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
@THIS
M=D
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
// push constant
@0
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
@l40
D;JEQ
@SP
A=M
M=0
@l41
0;JMP
(l40)
@SP
A=M
M=-1
(l41)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l42
D;JEQ
@String.intValue$IF_TRUE0
0;JMP
(l42)
@String.intValue$IF_FALSE0
0;JMP
(String.intValue$IF_TRUE0)
// push constant
@0
D=A
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
(String.intValue$IF_FALSE0)
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
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
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@1
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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push that
@THAT
A=M
D=M
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
@l43
D;JEQ
@SP
A=M
M=0
@l44
0;JMP
(l43)
@SP
A=M
M=-1
(l44)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l45
D;JEQ
@String.intValue$IF_TRUE1
0;JMP
(l45)
@String.intValue$IF_FALSE1
0;JMP
(String.intValue$IF_TRUE1)
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// segment base move
@4
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
@4
D=A
@LCL
M=M-D
// push constant
@1
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
(String.intValue$IF_FALSE1)
(String.intValue$WHILE_EXP0)
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
// logical operation
D=M-D
@l46
D;JLT
@SP
A=M
M=0
@l47
0;JMP
(l46)
@SP
A=M
M=-1
(l47)
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l48
D;JEQ
@String.intValue$WHILE_END0
0;JMP
(l48)
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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
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
// push constant
@0
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
@l49
D;JLT
@SP
A=M
M=0
@l50
0;JMP
(l49)
@SP
A=M
M=-1
(l50)
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
// push constant
@9
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
@l51
D;JGT
@SP
A=M
M=0
@l52
0;JMP
(l51)
@SP
A=M
M=-1
(l52)
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
@SP
M=M-1
A=M
D=M
@l53
D;JEQ
@String.intValue$IF_TRUE2
0;JMP
(l53)
@String.intValue$IF_FALSE2
0;JMP
(String.intValue$IF_TRUE2)
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
// push constant
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l54
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
@2
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
@Math.multiply
0;JMP
(l54)
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
// push local
@LCL
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
(String.intValue$IF_FALSE2)
@String.intValue$WHILE_EXP0
0;JMP
(String.intValue$WHILE_END0)
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
@SP
M=M-1
A=M
D=M
@l55
D;JEQ
@String.intValue$IF_TRUE3
0;JMP
(l55)
@String.intValue$IF_FALSE3
0;JMP
(String.intValue$IF_TRUE3)
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
// unary operation
@SP
M=M-1
A=M
M=-M
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
(String.intValue$IF_FALSE3)
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
(String.setInt)
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
// push argument
@ARG
A=M
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
@THIS
M=D
// push this
@THIS
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
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
@l56
D;JEQ
@SP
A=M
M=0
@l57
0;JMP
(l56)
@SP
A=M
M=-1
(l57)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l58
D;JEQ
@String.setInt$IF_TRUE0
0;JMP
(l58)
@String.setInt$IF_FALSE0
0;JMP
(String.setInt$IF_TRUE0)
// push constant
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l59
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
@Sys.error
0;JMP
(l59)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.setInt$IF_FALSE0)
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l60
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
@Array.new
0;JMP
(l60)
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
// push constant
@0
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
@l61
D;JLT
@SP
A=M
M=0
@l62
0;JMP
(l61)
@SP
A=M
M=-1
(l62)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l63
D;JEQ
@String.setInt$IF_TRUE1
0;JMP
(l63)
@String.setInt$IF_FALSE1
0;JMP
(String.setInt$IF_TRUE1)
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
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
// unary operation
@SP
M=M-1
A=M
M=-M
@SP
M=M+1
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
M=M-D
(String.setInt$IF_FALSE1)
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
(String.setInt$WHILE_EXP0)
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
// push constant
@0
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
@l64
D;JGT
@SP
A=M
M=0
@l65
0;JMP
(l64)
@SP
A=M
M=-1
(l65)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l66
D;JEQ
@String.setInt$WHILE_END0
0;JMP
(l66)
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
// push constant
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l67
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
@2
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
@Math.divide
0;JMP
(l67)
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
@48
D=A
@SP
A=M
M=D
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
// push constant
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l68
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
@2
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
@Math.multiply
0;JMP
(l68)
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
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
@LCL
A=M
M=D
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
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
M=M-D
@String.setInt$WHILE_EXP0
0;JMP
(String.setInt$WHILE_END0)
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
@SP
M=M-1
A=M
D=M
@l69
D;JEQ
@String.setInt$IF_TRUE2
0;JMP
(l69)
@String.setInt$IF_FALSE2
0;JMP
(String.setInt$IF_TRUE2)
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
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
@LCL
A=M
M=D
(String.setInt$IF_FALSE2)
// push this
@THIS
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
// logical operation
D=M-D
@l70
D;JLT
@SP
A=M
M=0
@l71
0;JMP
(l70)
@SP
A=M
M=-1
(l71)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l72
D;JEQ
@String.setInt$IF_TRUE3
0;JMP
(l72)
@String.setInt$IF_FALSE3
0;JMP
(String.setInt$IF_TRUE3)
// push constant
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l73
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
@Sys.error
0;JMP
(l73)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(String.setInt$IF_FALSE3)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
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
@l74
D;JEQ
@SP
A=M
M=0
@l75
0;JMP
(l74)
@SP
A=M
M=-1
(l75)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l76
D;JEQ
@String.setInt$IF_TRUE4
0;JMP
(l76)
@String.setInt$IF_FALSE4
0;JMP
(String.setInt$IF_TRUE4)
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@1
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
// push constant
@48
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
@String.setInt$IF_END4
0;JMP
(String.setInt$IF_FALSE4)
// push constant
@0
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
(String.setInt$WHILE_EXP1)
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
// logical operation
D=M-D
@l77
D;JLT
@SP
A=M
M=0
@l78
0;JMP
(l77)
@SP
A=M
M=-1
(l78)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l79
D;JEQ
@String.setInt$WHILE_END1
0;JMP
(l79)
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
// push: D = index
@1
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
// push that
@THAT
A=M
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
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
@String.setInt$WHILE_EXP1
0;JMP
(String.setInt$WHILE_END1)
(String.setInt$IF_END4)
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
// push return-address
@l80
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
@Array.dispose
0;JMP
(l80)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(String.newLine)
// push constant
@128
D=A
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
(String.backSpace)
// push constant
@129
D=A
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
(String.doubleQuote)
// push constant
@34
D=A
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
(Math.init)
@SP
A=M
M=0
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
// push return-address
@l81
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
@Array.new
0;JMP
(l81)
// pop
@SP
M=M-1
A=M
D=M
@Math.1
M=D
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l82
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
@Array.new
0;JMP
(l82)
// pop
@SP
M=M-1
A=M
D=M
@Math.0
M=D
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.0
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
// push constant
@1
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
(Math.init$WHILE_EXP0)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
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
@l83
D;JLT
@SP
A=M
M=0
@l84
0;JMP
(l83)
@SP
A=M
M=-1
(l84)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l85
D;JEQ
@Math.init$WHILE_END0
0;JMP
(l85)
// push local
@LCL
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.0
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
// push local
@LCL
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
// push static
@Math.0
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
@THAT
M=D
// push that
@THAT
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
// push static
@Math.0
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
@THAT
M=D
// push that
@THAT
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
@Math.init$WHILE_EXP0
0;JMP
(Math.init$WHILE_END0)
// push constant
@0
D=A
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
(Math.abs)
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
@0
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
@l86
D;JLT
@SP
A=M
M=0
@l87
0;JMP
(l86)
@SP
A=M
M=-1
(l87)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l88
D;JEQ
@Math.abs$IF_TRUE0
0;JMP
(l88)
@Math.abs$IF_FALSE0
0;JMP
(Math.abs$IF_TRUE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=-M
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
(Math.abs$IF_FALSE0)
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
(Math.multiply)
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
@0
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
@l89
D;JLT
@SP
A=M
M=0
@l90
0;JMP
(l89)
@SP
A=M
M=-1
(l90)
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
// push constant
@0
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
@l91
D;JGT
@SP
A=M
M=0
@l92
0;JMP
(l91)
@SP
A=M
M=-1
(l92)
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
@0
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
@l93
D;JGT
@SP
A=M
M=0
@l94
0;JMP
(l93)
@SP
A=M
M=-1
(l94)
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
// push constant
@0
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
@l95
D;JLT
@SP
A=M
M=0
@l96
0;JMP
(l95)
@SP
A=M
M=-1
(l96)
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
// segment base move
@4
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
@4
D=A
@LCL
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
// push return-address
@l97
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
@Math.abs
0;JMP
(l97)
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
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
// push return-address
@l98
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
@Math.abs
0;JMP
(l98)
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
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
// logical operation
D=M-D
@l99
D;JLT
@SP
A=M
M=0
@l100
0;JMP
(l99)
@SP
A=M
M=-1
(l100)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l101
D;JEQ
@Math.multiply$IF_TRUE0
0;JMP
(l101)
@Math.multiply$IF_FALSE0
0;JMP
(Math.multiply$IF_TRUE0)
// push argument
@ARG
A=M
D=M
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
@ARG
A=M
M=D
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
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
M=M-D
(Math.multiply$IF_FALSE0)
(Math.multiply$WHILE_EXP0)
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
@l102
D;JLT
@SP
A=M
M=0
@l103
0;JMP
(l102)
@SP
A=M
M=-1
(l103)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l104
D;JEQ
@Math.multiply$WHILE_END0
0;JMP
(l104)
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
// push static
@Math.0
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
@THAT
M=D
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
M=M&D
@SP
M=M+1
// push constant
@0
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
@l105
D;JEQ
@SP
A=M
M=0
@l106
0;JMP
(l105)
@SP
A=M
M=-1
(l106)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l107
D;JEQ
@Math.multiply$IF_TRUE1
0;JMP
(l107)
@Math.multiply$IF_FALSE1
0;JMP
(Math.multiply$IF_TRUE1)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
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
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
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
// push static
@Math.0
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
@THAT
M=D
// push that
@THAT
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
(Math.multiply$IF_FALSE1)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
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
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
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
@Math.multiply$WHILE_EXP0
0;JMP
(Math.multiply$WHILE_END0)
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
@SP
M=M-1
A=M
D=M
@l108
D;JEQ
@Math.multiply$IF_TRUE2
0;JMP
(l108)
@Math.multiply$IF_FALSE2
0;JMP
(Math.multiply$IF_TRUE2)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=-M
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
(Math.multiply$IF_FALSE2)
// push local
@LCL
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
(Math.divide)
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
// push constant
@0
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
@l109
D;JEQ
@SP
A=M
M=0
@l110
0;JMP
(l109)
@SP
A=M
M=-1
(l110)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l111
D;JEQ
@Math.divide$IF_TRUE0
0;JMP
(l111)
@Math.divide$IF_FALSE0
0;JMP
(Math.divide$IF_TRUE0)
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l112
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
@Sys.error
0;JMP
(l112)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Math.divide$IF_FALSE0)
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
@0
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
@l113
D;JLT
@SP
A=M
M=0
@l114
0;JMP
(l113)
@SP
A=M
M=-1
(l114)
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
// push constant
@0
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
@l115
D;JGT
@SP
A=M
M=0
@l116
0;JMP
(l115)
@SP
A=M
M=-1
(l116)
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
@0
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
@l117
D;JGT
@SP
A=M
M=0
@l118
0;JMP
(l117)
@SP
A=M
M=-1
(l118)
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
// push constant
@0
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
@l119
D;JLT
@SP
A=M
M=0
@l120
0;JMP
(l119)
@SP
A=M
M=-1
(l120)
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
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.1
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
// push return-address
@l121
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
@Math.abs
0;JMP
(l121)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
// push return-address
@l122
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
@Math.abs
0;JMP
(l122)
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
(Math.divide$WHILE_EXP0)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
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
@l123
D;JLT
@SP
A=M
M=0
@l124
0;JMP
(l123)
@SP
A=M
M=-1
(l124)
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
// unary operation
@SP
M=M-1
A=M
M=!M
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l125
D;JEQ
@Math.divide$WHILE_END0
0;JMP
(l125)
// push constant
@32767
D=A
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
// push static
@Math.1
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
@THAT
M=D
// push that
@THAT
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.1
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
@THAT
M=D
// push that
@THAT
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
@l126
D;JLT
@SP
A=M
M=0
@l127
0;JMP
(l126)
@SP
A=M
M=-1
(l127)
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l128
D;JEQ
@Math.divide$IF_TRUE1
0;JMP
(l128)
@Math.divide$IF_FALSE1
0;JMP
(Math.divide$IF_TRUE1)
// push local
@LCL
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
M=M+D
@SP
M=M+1
// push static
@Math.1
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.1
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
@THAT
M=D
// push that
@THAT
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
// push static
@Math.1
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
@THAT
M=D
// push that
@THAT
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
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
// push static
@Math.1
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
@THAT
M=D
// push that
@THAT
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
@l129
D;JGT
@SP
A=M
M=0
@l130
0;JMP
(l129)
@SP
A=M
M=-1
(l130)
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l131
D;JEQ
@Math.divide$IF_TRUE2
0;JMP
(l131)
@Math.divide$IF_FALSE2
0;JMP
(Math.divide$IF_TRUE2)
// push local
@LCL
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
(Math.divide$IF_FALSE2)
(Math.divide$IF_FALSE1)
@Math.divide$WHILE_EXP0
0;JMP
(Math.divide$WHILE_END0)
(Math.divide$WHILE_EXP1)
// push local
@LCL
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
// logical operation
D=M-D
@l132
D;JGT
@SP
A=M
M=0
@l133
0;JMP
(l132)
@SP
A=M
M=-1
(l133)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l134
D;JEQ
@Math.divide$WHILE_END1
0;JMP
(l134)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.1
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
@THAT
M=D
// push that
@THAT
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
@l135
D;JGT
@SP
A=M
M=0
@l136
0;JMP
(l135)
@SP
A=M
M=-1
(l136)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l137
D;JEQ
@Math.divide$IF_TRUE3
0;JMP
(l137)
@Math.divide$IF_FALSE3
0;JMP
(Math.divide$IF_TRUE3)
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.0
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
@THAT
M=D
// push that
@THAT
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
// push static
@Math.1
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
@THAT
M=D
// push that
@THAT
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
(Math.divide$IF_FALSE3)
// push local
@LCL
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
@LCL
A=M
M=D
@Math.divide$WHILE_EXP1
0;JMP
(Math.divide$WHILE_END1)
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
@SP
M=M-1
A=M
D=M
@l138
D;JEQ
@Math.divide$IF_TRUE4
0;JMP
(l138)
@Math.divide$IF_FALSE4
0;JMP
(Math.divide$IF_TRUE4)
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
// unary operation
@SP
M=M-1
A=M
M=-M
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
(Math.divide$IF_FALSE4)
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
(Math.sqrt)
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
@0
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
@l139
D;JLT
@SP
A=M
M=0
@l140
0;JMP
(l139)
@SP
A=M
M=-1
(l140)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l141
D;JEQ
@Math.sqrt$IF_TRUE0
0;JMP
(l141)
@Math.sqrt$IF_FALSE0
0;JMP
(Math.sqrt$IF_TRUE0)
// push constant
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l142
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
@Sys.error
0;JMP
(l142)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Math.sqrt$IF_FALSE0)
// push constant
@7
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
(Math.sqrt$WHILE_EXP0)
// push local
@LCL
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
// logical operation
D=M-D
@l143
D;JGT
@SP
A=M
M=0
@l144
0;JMP
(l143)
@SP
A=M
M=-1
(l144)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l145
D;JEQ
@Math.sqrt$WHILE_END0
0;JMP
(l145)
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Math.0
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
@THAT
M=D
// push that
@THAT
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
// push return-address
@l146
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
@2
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
@Math.multiply
0;JMP
(l146)
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
// logical operation
D=M-D
@l147
D;JGT
@SP
A=M
M=0
@l148
0;JMP
(l147)
@SP
A=M
M=-1
(l148)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
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
// push constant
@0
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
@l149
D;JLT
@SP
A=M
M=0
@l150
0;JMP
(l149)
@SP
A=M
M=-1
(l150)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
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
@SP
M=M-1
A=M
D=M
@l151
D;JEQ
@Math.sqrt$IF_TRUE1
0;JMP
(l151)
@Math.sqrt$IF_FALSE1
0;JMP
(Math.sqrt$IF_TRUE1)
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
(Math.sqrt$IF_FALSE1)
// push local
@LCL
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
@LCL
A=M
M=D
@Math.sqrt$WHILE_EXP0
0;JMP
(Math.sqrt$WHILE_END0)
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
(Math.max)
// push argument
@ARG
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
// logical operation
D=M-D
@l152
D;JGT
@SP
A=M
M=0
@l153
0;JMP
(l152)
@SP
A=M
M=-1
(l153)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l154
D;JEQ
@Math.max$IF_TRUE0
0;JMP
(l154)
@Math.max$IF_FALSE0
0;JMP
(Math.max$IF_TRUE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
M=M-D
(Math.max$IF_FALSE0)
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
(Math.min)
// push argument
@ARG
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
// logical operation
D=M-D
@l155
D;JLT
@SP
A=M
M=0
@l156
0;JMP
(l155)
@SP
A=M
M=-1
(l156)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l157
D;JEQ
@Math.min$IF_TRUE0
0;JMP
(l157)
@Math.min$IF_FALSE0
0;JMP
(Math.min$IF_TRUE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
M=M-D
(Math.min$IF_FALSE0)
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
(Array.new)
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
@0
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
@l158
D;JGT
@SP
A=M
M=0
@l159
0;JMP
(l158)
@SP
A=M
M=-1
(l159)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l160
D;JEQ
@Array.new$IF_TRUE0
0;JMP
(l160)
@Array.new$IF_FALSE0
0;JMP
(Array.new$IF_TRUE0)
// push constant
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l161
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
@Sys.error
0;JMP
(l161)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Array.new$IF_FALSE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l162
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
@Memory.alloc
0;JMP
(l162)
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
(Array.dispose)
// push argument
@ARG
A=M
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
@THIS
M=D
// push pointer
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l163
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
@Memory.deAlloc
0;JMP
(l163)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Main.main)
@SP
A=M
M=0
@SP
M=M+1
// push constant
@8001
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
// push constant
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=-M
@SP
M=M+1
// push return-address
@l164
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
@3
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
@Main.fillMemory
0;JMP
(l164)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@8000
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l165
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
@Memory.peek
0;JMP
(l165)
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
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
// push return-address
@l166
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
@Main.convert
0;JMP
(l166)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Main.convert)
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
// push constant
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=-M
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
(Main.convert$label0)
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
@SP
M=M-1
A=M
D=M
@l167
D;JEQ
@Main.convert$label2
0;JMP
(l167)
@Main.convert$label1
0;JMP
(Main.convert$label2)
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l168
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
@Main.nextMask
0;JMP
(l168)
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
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
@l169
D;JGT
@SP
A=M
M=0
@l170
0;JMP
(l169)
@SP
A=M
M=-1
(l170)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l171
D;JEQ
@Main.convert$label3
0;JMP
(l171)
@Main.convert$label4
0;JMP
(Main.convert$label3)
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
M=M&D
@SP
M=M+1
// push constant
@0
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
@l172
D;JEQ
@SP
A=M
M=0
@l173
0;JMP
(l172)
@SP
A=M
M=-1
(l173)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l174
D;JEQ
@Main.convert$label6
0;JMP
(l174)
@Main.convert$label7
0;JMP
(Main.convert$label6)
// push constant
@8000
D=A
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
// push constant
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l175
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
@2
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
@Memory.poke
0;JMP
(l175)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Main.convert$label8
0;JMP
(Main.convert$label7)
// push constant
@8000
D=A
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
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l176
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
@2
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
@Memory.poke
0;JMP
(l176)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Main.convert$label8)
@Main.convert$label5
0;JMP
(Main.convert$label4)
// push constant
@0
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
(Main.convert$label5)
@Main.convert$label0
0;JMP
(Main.convert$label1)
// push constant
@0
D=A
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
(Main.nextMask)
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
@0
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
@l177
D;JEQ
@SP
A=M
M=0
@l178
0;JMP
(l177)
@SP
A=M
M=-1
(l178)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l179
D;JEQ
@Main.nextMask$label0
0;JMP
(l179)
@Main.nextMask$label1
0;JMP
(Main.nextMask$label0)
// push constant
@1
D=A
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
@Main.nextMask$label2
0;JMP
(Main.nextMask$label1)
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
// push return-address
@l180
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
@2
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
@Math.multiply
0;JMP
(l180)
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
(Main.nextMask$label2)
(Main.fillMemory)
(Main.fillMemory$label0)
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
// push constant
@0
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
@l181
D;JGT
@SP
A=M
M=0
@l182
0;JMP
(l181)
@SP
A=M
M=-1
(l182)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l183
D;JEQ
@Main.fillMemory$label2
0;JMP
(l183)
@Main.fillMemory$label1
0;JMP
(Main.fillMemory$label2)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@2
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
// push return-address
@l184
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
@2
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
@Memory.poke
0;JMP
(l184)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
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
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
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
@ARG
A=M
M=D
@Main.fillMemory$label0
0;JMP
(Main.fillMemory$label1)
// push constant
@0
D=A
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
(Keyboard.init)
// push constant
@0
D=A
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
(Keyboard.keyPressed)
// push constant
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l185
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
@Memory.peek
0;JMP
(l185)
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
(Keyboard.readChar)
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l186
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
@Output.printChar
0;JMP
(l186)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Keyboard.readChar$WHILE_EXP0)
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
// push constant
@0
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
@l187
D;JEQ
@SP
A=M
M=0
@l188
0;JMP
(l187)
@SP
A=M
M=-1
(l188)
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
// push constant
@0
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
@l189
D;JGT
@SP
A=M
M=0
@l190
0;JMP
(l189)
@SP
A=M
M=-1
(l190)
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
@SP
M=M-1
A=M
D=M
@l191
D;JEQ
@Keyboard.readChar$WHILE_END0
0;JMP
(l191)
// push return-address
@l192
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
@Keyboard.keyPressed
0;JMP
(l192)
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
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
// push constant
@0
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
@l193
D;JGT
@SP
A=M
M=0
@l194
0;JMP
(l193)
@SP
A=M
M=-1
(l194)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l195
D;JEQ
@Keyboard.readChar$IF_TRUE0
0;JMP
(l195)
@Keyboard.readChar$IF_FALSE0
0;JMP
(Keyboard.readChar$IF_TRUE0)
// push local
@LCL
A=M
D=M
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
(Keyboard.readChar$IF_FALSE0)
@Keyboard.readChar$WHILE_EXP0
0;JMP
(Keyboard.readChar$WHILE_END0)
// push return-address
@l196
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
@String.backSpace
0;JMP
(l196)
// push return-address
@l197
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
@Output.printChar
0;JMP
(l197)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
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
// push return-address
@l198
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
@Output.printChar
0;JMP
(l198)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
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
(Keyboard.readLine)
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
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l199
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
@String.new
0;JMP
(l199)
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l200
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
@Output.printString
0;JMP
(l200)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l201
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
@String.newLine
0;JMP
(l201)
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
// push return-address
@l202
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
@String.backSpace
0;JMP
(l202)
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
(Keyboard.readLine$WHILE_EXP0)
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l203
D;JEQ
@Keyboard.readLine$WHILE_END0
0;JMP
(l203)
// push return-address
@l204
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
@Keyboard.readChar
0;JMP
(l204)
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
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
@l205
D;JEQ
@SP
A=M
M=0
@l206
0;JMP
(l205)
@SP
A=M
M=-1
(l206)
@SP
M=M+1
// segment base move
@4
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
@4
D=A
@LCL
M=M-D
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l207
D;JEQ
@Keyboard.readLine$IF_TRUE0
0;JMP
(l207)
@Keyboard.readLine$IF_FALSE0
0;JMP
(Keyboard.readLine$IF_TRUE0)
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
@l208
D;JEQ
@SP
A=M
M=0
@l209
0;JMP
(l208)
@SP
A=M
M=-1
(l209)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l210
D;JEQ
@Keyboard.readLine$IF_TRUE1
0;JMP
(l210)
@Keyboard.readLine$IF_FALSE1
0;JMP
(Keyboard.readLine$IF_TRUE1)
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
// push return-address
@l211
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
@String.eraseLastChar
0;JMP
(l211)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Keyboard.readLine$IF_END1
0;JMP
(Keyboard.readLine$IF_FALSE1)
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l212
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
@2
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
@String.appendChar
0;JMP
(l212)
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
(Keyboard.readLine$IF_END1)
(Keyboard.readLine$IF_FALSE0)
@Keyboard.readLine$WHILE_EXP0
0;JMP
(Keyboard.readLine$WHILE_END0)
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
(Keyboard.readInt)
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
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
// push return-address
@l213
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
@Keyboard.readLine
0;JMP
(l213)
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
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
// push return-address
@l214
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
@String.intValue
0;JMP
(l214)
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l215
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
@String.dispose
0;JMP
(l215)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
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
// push return-address
@l216
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
@Memory.init
0;JMP
(l216)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l217
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
@Math.init
0;JMP
(l217)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l218
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
@Screen.init
0;JMP
(l218)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l219
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
@Output.init
0;JMP
(l219)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l220
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
@Keyboard.init
0;JMP
(l220)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l221
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
@Main.main
0;JMP
(l221)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l222
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
@Sys.halt
0;JMP
(l222)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Sys.halt)
(Sys.halt$WHILE_EXP0)
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l223
D;JEQ
@Sys.halt$WHILE_END0
0;JMP
(l223)
@Sys.halt$WHILE_EXP0
0;JMP
(Sys.halt$WHILE_END0)
// push constant
@0
D=A
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
(Sys.wait)
@SP
A=M
M=0
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
// push constant
@0
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
@l224
D;JLT
@SP
A=M
M=0
@l225
0;JMP
(l224)
@SP
A=M
M=-1
(l225)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l226
D;JEQ
@Sys.wait$IF_TRUE0
0;JMP
(l226)
@Sys.wait$IF_FALSE0
0;JMP
(Sys.wait$IF_TRUE0)
// push constant
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l227
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
@Sys.error
0;JMP
(l227)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Sys.wait$IF_FALSE0)
(Sys.wait$WHILE_EXP0)
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
@0
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
@l228
D;JGT
@SP
A=M
M=0
@l229
0;JMP
(l228)
@SP
A=M
M=-1
(l229)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l230
D;JEQ
@Sys.wait$WHILE_END0
0;JMP
(l230)
// push constant
@50
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
(Sys.wait$WHILE_EXP1)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
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
@l231
D;JGT
@SP
A=M
M=0
@l232
0;JMP
(l231)
@SP
A=M
M=-1
(l232)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l233
D;JEQ
@Sys.wait$WHILE_END1
0;JMP
(l233)
// push local
@LCL
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
@LCL
A=M
M=D
@Sys.wait$WHILE_EXP1
0;JMP
(Sys.wait$WHILE_END1)
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
@Sys.wait$WHILE_EXP0
0;JMP
(Sys.wait$WHILE_END0)
// push constant
@0
D=A
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
(Sys.error)
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l234
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
@String.new
0;JMP
(l234)
// push constant
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l235
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
@2
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
@String.appendChar
0;JMP
(l235)
// push constant
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l236
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
@2
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
@String.appendChar
0;JMP
(l236)
// push constant
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l237
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
@2
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
@String.appendChar
0;JMP
(l237)
// push return-address
@l238
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
@Output.printString
0;JMP
(l238)
// pop
@SP
M=M-1
A=M
D=M
@R5
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
// push return-address
@l239
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
@Output.printInt
0;JMP
(l239)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l240
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
@Sys.halt
0;JMP
(l240)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Output.init)
// push constant
@16384
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
@Output.4
M=D
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@Output.2
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
@Output.1
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
@Output.0
M=D
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l241
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
@String.new
0;JMP
(l241)
// pop
@SP
M=M-1
A=M
D=M
@Output.3
M=D
// push return-address
@l242
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
@Output.initMap
0;JMP
(l242)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push return-address
@l243
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
@Output.createShiftedMap
0;JMP
(l243)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Output.initMap)
// push constant
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l244
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
@Array.new
0;JMP
(l244)
// pop
@SP
M=M-1
A=M
D=M
@Output.5
M=D
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l245
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
@12
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
@Output.create
0;JMP
(l245)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l246
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
@12
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
@Output.create
0;JMP
(l246)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@33
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l247
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
@12
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
@Output.create
0;JMP
(l247)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l248
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
@12
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
@Output.create
0;JMP
(l248)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l249
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
@12
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
@Output.create
0;JMP
(l249)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@36
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l250
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
@12
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
@Output.create
0;JMP
(l250)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l251
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
@12
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
@Output.create
0;JMP
(l251)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@38
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l252
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
@12
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
@Output.create
0;JMP
(l252)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@39
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l253
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
@12
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
@Output.create
0;JMP
(l253)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
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
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l254
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
@12
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
@Output.create
0;JMP
(l254)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
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
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l255
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
@12
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
@Output.create
0;JMP
(l255)
// pop
@SP
M=M-1
A=M
D=M
@R5
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
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l256
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
@12
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
@Output.create
0;JMP
(l256)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l257
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
@12
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
@Output.create
0;JMP
(l257)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l258
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
@12
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
@Output.create
0;JMP
(l258)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l259
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
@12
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
@Output.create
0;JMP
(l259)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l260
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
@12
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
@Output.create
0;JMP
(l260)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
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
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l261
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
@12
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
@Output.create
0;JMP
(l261)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@48
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l262
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
@12
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
@Output.create
0;JMP
(l262)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@49
D=A
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
// push constant
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l263
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
@12
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
@Output.create
0;JMP
(l263)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l264
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
@12
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
@Output.create
0;JMP
(l264)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l265
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
@12
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
@Output.create
0;JMP
(l265)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@52
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
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l266
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
@12
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
@Output.create
0;JMP
(l266)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
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
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l267
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
@12
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
@Output.create
0;JMP
(l267)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
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
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l268
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
@12
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
@Output.create
0;JMP
(l268)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l269
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
@12
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
@Output.create
0;JMP
(l269)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l270
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
@12
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
@Output.create
0;JMP
(l270)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l271
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
@12
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
@Output.create
0;JMP
(l271)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l272
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
@12
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
@Output.create
0;JMP
(l272)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l273
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
@12
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
@Output.create
0;JMP
(l273)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
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
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l274
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
@12
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
@Output.create
0;JMP
(l274)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l275
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
@12
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
@Output.create
0;JMP
(l275)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
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
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l276
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
@12
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
@Output.create
0;JMP
(l276)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l277
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
@12
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
@Output.create
0;JMP
(l277)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l278
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
@12
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
@Output.create
0;JMP
(l278)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@65
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l279
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
@12
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
@Output.create
0;JMP
(l279)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@66
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
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
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
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
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
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l280
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
@12
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
@Output.create
0;JMP
(l280)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@67
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l281
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
@12
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
@Output.create
0;JMP
(l281)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@68
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l282
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
@12
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
@Output.create
0;JMP
(l282)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l283
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
@12
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
@Output.create
0;JMP
(l283)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l284
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
@12
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
@Output.create
0;JMP
(l284)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l285
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
@12
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
@Output.create
0;JMP
(l285)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@72
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l286
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
@12
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
@Output.create
0;JMP
(l286)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@73
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l287
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
@12
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
@Output.create
0;JMP
(l287)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@74
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l288
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
@12
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
@Output.create
0;JMP
(l288)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@75
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l289
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
@12
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
@Output.create
0;JMP
(l289)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@76
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l290
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
@12
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
@Output.create
0;JMP
(l290)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@77
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l291
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
@12
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
@Output.create
0;JMP
(l291)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l292
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
@12
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
@Output.create
0;JMP
(l292)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l293
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
@12
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
@Output.create
0;JMP
(l293)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@80
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
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
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
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l294
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
@12
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
@Output.create
0;JMP
(l294)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l295
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
@12
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
@Output.create
0;JMP
(l295)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@82
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
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
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
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l296
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
@12
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
@Output.create
0;JMP
(l296)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l297
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
@12
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
@Output.create
0;JMP
(l297)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@84
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l298
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
@12
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
@Output.create
0;JMP
(l298)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l299
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
@12
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
@Output.create
0;JMP
(l299)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@86
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l300
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
@12
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
@Output.create
0;JMP
(l300)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@87
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l301
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
@12
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
@Output.create
0;JMP
(l301)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@88
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l302
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
@12
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
@Output.create
0;JMP
(l302)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@89
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@12
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l303
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
@12
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
@Output.create
0;JMP
(l303)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l304
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
@12
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
@Output.create
0;JMP
(l304)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@91
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l305
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
@12
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
@Output.create
0;JMP
(l305)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@92
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
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
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
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
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l306
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
@12
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
@Output.create
0;JMP
(l306)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@93
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l307
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
@12
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
@Output.create
0;JMP
(l307)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@94
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l308
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
@12
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
@Output.create
0;JMP
(l308)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@95
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l309
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
@12
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
@Output.create
0;JMP
(l309)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@96
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
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
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l310
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
@12
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
@Output.create
0;JMP
(l310)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l311
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
@12
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
@Output.create
0;JMP
(l311)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@98
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l312
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
@12
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
@Output.create
0;JMP
(l312)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l313
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
@12
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
@Output.create
0;JMP
(l313)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l314
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
@12
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
@Output.create
0;JMP
(l314)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l315
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
@12
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
@Output.create
0;JMP
(l315)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l316
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
@12
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
@Output.create
0;JMP
(l316)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@103
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l317
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
@12
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
@Output.create
0;JMP
(l317)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@104
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l318
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
@12
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
@Output.create
0;JMP
(l318)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@105
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@14
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l319
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
@12
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
@Output.create
0;JMP
(l319)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@106
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l320
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
@12
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
@Output.create
0;JMP
(l320)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@107
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l321
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
@12
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
@Output.create
0;JMP
(l321)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@108
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@14
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l322
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
@12
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
@Output.create
0;JMP
(l322)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l323
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
@12
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
@Output.create
0;JMP
(l323)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@110
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l324
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
@12
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
@Output.create
0;JMP
(l324)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l325
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
@12
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
@Output.create
0;JMP
(l325)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
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
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l326
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
@12
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
@Output.create
0;JMP
(l326)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@113
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l327
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
@12
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
@Output.create
0;JMP
(l327)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l328
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
@12
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
@Output.create
0;JMP
(l328)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@115
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l329
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
@12
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
@Output.create
0;JMP
(l329)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l330
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
@12
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
@Output.create
0;JMP
(l330)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@117
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l331
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
@12
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
@Output.create
0;JMP
(l331)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l332
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
@12
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
@Output.create
0;JMP
(l332)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@119
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l333
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
@12
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
@Output.create
0;JMP
(l333)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
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
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l334
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
@12
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
@Output.create
0;JMP
(l334)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@121
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l335
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
@12
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
@Output.create
0;JMP
(l335)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@122
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@27
D=A
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
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l336
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
@12
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
@Output.create
0;JMP
(l336)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@56
D=A
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
// push constant
@12
D=A
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
// push constant
@7
D=A
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
// push constant
@12
D=A
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
// push constant
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l337
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
@12
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
@Output.create
0;JMP
(l337)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@124
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@12
D=A
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
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l338
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
@12
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
@Output.create
0;JMP
(l338)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@125
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@7
D=A
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
// push constant
@12
D=A
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
// push constant
@56
D=A
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
// push constant
@12
D=A
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
// push constant
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l339
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
@12
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
@Output.create
0;JMP
(l339)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@38
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
// push constant
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l340
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
@12
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
@Output.create
0;JMP
(l340)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Output.create)
@SP
A=M
M=0
@SP
M=M+1
// push constant
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l341
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
@Array.new
0;JMP
(l341)
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
// push static
@Output.5
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
// push local
@LCL
A=M
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@0
D=A
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
// push: D = index
@2
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@2
D=A
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
// push: D = index
@3
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@3
D=A
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
// push: D = index
@4
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@4
D=A
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
// push: D = index
@5
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@5
D=A
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
// push: D = index
@6
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@6
D=A
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
// push: D = index
@7
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@7
D=A
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
// push: D = index
@8
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@8
D=A
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
// push: D = index
@9
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@9
D=A
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
// push: D = index
@10
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@10
D=A
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
// push: D = index
@11
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@0
D=A
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
(Output.createShiftedMap)
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
// push constant
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l342
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
@Array.new
0;JMP
(l342)
// pop
@SP
M=M-1
A=M
D=M
@Output.6
M=D
// push constant
@0
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
(Output.createShiftedMap$WHILE_EXP0)
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
// push constant
@127
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
@l343
D;JLT
@SP
A=M
M=0
@l344
0;JMP
(l343)
@SP
A=M
M=-1
(l344)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l345
D;JEQ
@Output.createShiftedMap$WHILE_END0
0;JMP
(l345)
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
// push static
@Output.5
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
@THAT
M=D
// push that
@THAT
A=M
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
@LCL
A=M
M=D
// push constant
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l346
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
@Array.new
0;JMP
(l346)
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
// push static
@Output.6
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
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@0
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
(Output.createShiftedMap$WHILE_EXP1)
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
// push constant
@11
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
@l347
D;JLT
@SP
A=M
M=0
@l348
0;JMP
(l347)
@SP
A=M
M=-1
(l348)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l349
D;JEQ
@Output.createShiftedMap$WHILE_END1
0;JMP
(l349)
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
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l350
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
@2
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
@Math.multiply
0;JMP
(l350)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
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
@Output.createShiftedMap$WHILE_EXP1
0;JMP
(Output.createShiftedMap$WHILE_END1)
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
// push constant
@0
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
@l351
D;JEQ
@SP
A=M
M=0
@l352
0;JMP
(l351)
@SP
A=M
M=-1
(l352)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l353
D;JEQ
@Output.createShiftedMap$IF_TRUE0
0;JMP
(l353)
@Output.createShiftedMap$IF_FALSE0
0;JMP
(Output.createShiftedMap$IF_TRUE0)
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
@Output.createShiftedMap$IF_END0
0;JMP
(Output.createShiftedMap$IF_FALSE0)
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
(Output.createShiftedMap$IF_END0)
@Output.createShiftedMap$WHILE_EXP0
0;JMP
(Output.createShiftedMap$WHILE_END0)
// push constant
@0
D=A
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
(Output.getMap)
@SP
A=M
M=0
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
// push constant
@32
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
@l354
D;JLT
@SP
A=M
M=0
@l355
0;JMP
(l354)
@SP
A=M
M=-1
(l355)
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
// push constant
@126
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
@l356
D;JGT
@SP
A=M
M=0
@l357
0;JMP
(l356)
@SP
A=M
M=-1
(l357)
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
@SP
M=M-1
A=M
D=M
@l358
D;JEQ
@Output.getMap$IF_TRUE0
0;JMP
(l358)
@Output.getMap$IF_FALSE0
0;JMP
(Output.getMap$IF_TRUE0)
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
@ARG
A=M
M=D
(Output.getMap$IF_FALSE0)
// push static
@Output.2
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
@l359
D;JEQ
@Output.getMap$IF_TRUE1
0;JMP
(l359)
@Output.getMap$IF_FALSE1
0;JMP
(Output.getMap$IF_TRUE1)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Output.5
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
@THAT
M=D
// push that
@THAT
A=M
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
@LCL
A=M
M=D
@Output.getMap$IF_END1
0;JMP
(Output.getMap$IF_FALSE1)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Output.6
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
@THAT
M=D
// push that
@THAT
A=M
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
@LCL
A=M
M=D
(Output.getMap$IF_END1)
// push local
@LCL
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
(Output.drawChar)
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l360
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
@Output.getMap
0;JMP
(l360)
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
// push static
@Output.1
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
@LCL
A=M
M=D
(Output.drawChar$WHILE_EXP0)
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
// push constant
@11
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
@l361
D;JLT
@SP
A=M
M=0
@l362
0;JMP
(l361)
@SP
A=M
M=-1
(l362)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l363
D;JEQ
@Output.drawChar$WHILE_END0
0;JMP
(l363)
// push static
@Output.2
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
@l364
D;JEQ
@Output.drawChar$IF_TRUE0
0;JMP
(l364)
@Output.drawChar$IF_FALSE0
0;JMP
(Output.drawChar$IF_TRUE0)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Output.4
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
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@256
D=A
@SP
A=M
M=D
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
@Output.drawChar$IF_END0
0;JMP
(Output.drawChar$IF_FALSE0)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Output.4
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
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@255
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
M=M&D
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
(Output.drawChar$IF_END0)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Output.4
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
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
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
// push constant
@32
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
@LCL
A=M
M=D
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
@Output.drawChar$WHILE_EXP0
0;JMP
(Output.drawChar$WHILE_END0)
// push constant
@0
D=A
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
(Output.moveCursor)
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
@0
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
@l365
D;JLT
@SP
A=M
M=0
@l366
0;JMP
(l365)
@SP
A=M
M=-1
(l366)
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
// push constant
@22
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
@l367
D;JGT
@SP
A=M
M=0
@l368
0;JMP
(l367)
@SP
A=M
M=-1
(l368)
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
// push constant
@0
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
@l369
D;JLT
@SP
A=M
M=0
@l370
0;JMP
(l369)
@SP
A=M
M=-1
(l370)
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
// push constant
@63
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
@l371
D;JGT
@SP
A=M
M=0
@l372
0;JMP
(l371)
@SP
A=M
M=-1
(l372)
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
@SP
M=M-1
A=M
D=M
@l373
D;JEQ
@Output.moveCursor$IF_TRUE0
0;JMP
(l373)
@Output.moveCursor$IF_FALSE0
0;JMP
(Output.moveCursor$IF_TRUE0)
// push constant
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l374
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
@Sys.error
0;JMP
(l374)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Output.moveCursor$IF_FALSE0)
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
// push constant
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l375
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
@2
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
@Math.divide
0;JMP
(l375)
// pop
@SP
M=M-1
A=M
D=M
@Output.0
M=D
// push constant
@32
D=A
@SP
A=M
M=D
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
// push constant
@352
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l376
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
@2
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
@Math.multiply
0;JMP
(l376)
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
// push static
@Output.0
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
@Output.1
M=D
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
// push static
@Output.0
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
// push return-address
@l377
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
@2
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
@Math.multiply
0;JMP
(l377)
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
@l378
D;JEQ
@SP
A=M
M=0
@l379
0;JMP
(l378)
@SP
A=M
M=-1
(l379)
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l380
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
@Output.drawChar
0;JMP
(l380)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Output.printChar)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l381
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
@String.newLine
0;JMP
(l381)
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
@l382
D;JEQ
@SP
A=M
M=0
@l383
0;JMP
(l382)
@SP
A=M
M=-1
(l383)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l384
D;JEQ
@Output.printChar$IF_TRUE0
0;JMP
(l384)
@Output.printChar$IF_FALSE0
0;JMP
(Output.printChar$IF_TRUE0)
// push return-address
@l385
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
@Output.println
0;JMP
(l385)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Output.printChar$IF_END0
0;JMP
(Output.printChar$IF_FALSE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l386
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
@String.backSpace
0;JMP
(l386)
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
@l387
D;JEQ
@SP
A=M
M=0
@l388
0;JMP
(l387)
@SP
A=M
M=-1
(l388)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l389
D;JEQ
@Output.printChar$IF_TRUE1
0;JMP
(l389)
@Output.printChar$IF_FALSE1
0;JMP
(Output.printChar$IF_TRUE1)
// push return-address
@l390
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
@Output.backSpace
0;JMP
(l390)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Output.printChar$IF_END1
0;JMP
(Output.printChar$IF_FALSE1)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l391
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
@Output.drawChar
0;JMP
(l391)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push static
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l392
D;JEQ
@Output.printChar$IF_TRUE2
0;JMP
(l392)
@Output.printChar$IF_FALSE2
0;JMP
(Output.printChar$IF_TRUE2)
// push static
@Output.0
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
@Output.0
M=D
// push static
@Output.1
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
@Output.1
M=D
(Output.printChar$IF_FALSE2)
// push static
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@32
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
@l393
D;JEQ
@SP
A=M
M=0
@l394
0;JMP
(l393)
@SP
A=M
M=-1
(l394)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l395
D;JEQ
@Output.printChar$IF_TRUE3
0;JMP
(l395)
@Output.printChar$IF_FALSE3
0;JMP
(Output.printChar$IF_TRUE3)
// push return-address
@l396
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
@Output.println
0;JMP
(l396)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Output.printChar$IF_END3
0;JMP
(Output.printChar$IF_FALSE3)
// push static
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@Output.2
M=D
(Output.printChar$IF_END3)
(Output.printChar$IF_END1)
(Output.printChar$IF_END0)
// push constant
@0
D=A
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
(Output.printString)
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
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
// push return-address
@l397
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
@String.length
0;JMP
(l397)
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
(Output.printString$WHILE_EXP0)
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
// logical operation
D=M-D
@l398
D;JLT
@SP
A=M
M=0
@l399
0;JMP
(l398)
@SP
A=M
M=-1
(l399)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l400
D;JEQ
@Output.printString$WHILE_END0
0;JMP
(l400)
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
// push return-address
@l401
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
@2
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
@String.charAt
0;JMP
(l401)
// push return-address
@l402
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
@Output.printChar
0;JMP
(l402)
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
@LCL
A=M
M=D
@Output.printString$WHILE_EXP0
0;JMP
(Output.printString$WHILE_END0)
// push constant
@0
D=A
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
(Output.printInt)
// push static
@Output.3
D=M
@SP
A=M
M=D
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
// push return-address
@l403
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
@2
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
@String.setInt
0;JMP
(l403)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push static
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l404
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
@Output.printString
0;JMP
(l404)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Output.println)
// push static
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@352
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
// push static
@Output.0
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
// pop
@SP
M=M-1
A=M
D=M
@Output.1
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
@Output.0
M=D
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@Output.2
M=D
// push static
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@8128
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
@l405
D;JEQ
@SP
A=M
M=0
@l406
0;JMP
(l405)
@SP
A=M
M=-1
(l406)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l407
D;JEQ
@Output.println$IF_TRUE0
0;JMP
(l407)
@Output.println$IF_FALSE0
0;JMP
(Output.println$IF_TRUE0)
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
@Output.1
M=D
(Output.println$IF_FALSE0)
// push constant
@0
D=A
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
(Output.backSpace)
// push static
@Output.2
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
@l408
D;JEQ
@Output.backSpace$IF_TRUE0
0;JMP
(l408)
@Output.backSpace$IF_FALSE0
0;JMP
(Output.backSpace$IF_TRUE0)
// push static
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
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
@l409
D;JGT
@SP
A=M
M=0
@l410
0;JMP
(l409)
@SP
A=M
M=-1
(l410)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l411
D;JEQ
@Output.backSpace$IF_TRUE1
0;JMP
(l411)
@Output.backSpace$IF_FALSE1
0;JMP
(Output.backSpace$IF_TRUE1)
// push static
@Output.0
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
@Output.0
M=D
// push static
@Output.1
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
@Output.1
M=D
@Output.backSpace$IF_END1
0;JMP
(Output.backSpace$IF_FALSE1)
// push constant
@31
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
@Output.0
M=D
// push static
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@32
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
@l412
D;JEQ
@SP
A=M
M=0
@l413
0;JMP
(l412)
@SP
A=M
M=-1
(l413)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l414
D;JEQ
@Output.backSpace$IF_TRUE2
0;JMP
(l414)
@Output.backSpace$IF_FALSE2
0;JMP
(Output.backSpace$IF_TRUE2)
// push constant
@8128
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
@Output.1
M=D
(Output.backSpace$IF_FALSE2)
// push static
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@321
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
@Output.1
M=D
(Output.backSpace$IF_END1)
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
@Output.2
M=D
@Output.backSpace$IF_END0
0;JMP
(Output.backSpace$IF_FALSE0)
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@Output.2
M=D
(Output.backSpace$IF_END0)
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l415
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
@Output.drawChar
0;JMP
(l415)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Screen.init)
@SP
A=M
M=0
@SP
M=M+1
// push constant
@16384
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
@Screen.1
M=D
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@Screen.2
M=D
// push constant
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l416
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
@Array.new
0;JMP
(l416)
// pop
@SP
M=M-1
A=M
D=M
@Screen.0
M=D
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push static
@Screen.0
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
// push constant
@1
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
(Screen.init$WHILE_EXP0)
// push local
@LCL
A=M
D=M
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
@l417
D;JLT
@SP
A=M
M=0
@l418
0;JMP
(l417)
@SP
A=M
M=-1
(l418)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l419
D;JEQ
@Screen.init$WHILE_END0
0;JMP
(l419)
// push local
@LCL
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Screen.0
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
// push local
@LCL
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
// push static
@Screen.0
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
@THAT
M=D
// push that
@THAT
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
// push static
@Screen.0
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
@THAT
M=D
// push that
@THAT
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
@Screen.init$WHILE_EXP0
0;JMP
(Screen.init$WHILE_END0)
// push constant
@0
D=A
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
(Screen.clearScreen)
@SP
A=M
M=0
@SP
M=M+1
(Screen.clearScreen$WHILE_EXP0)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@8192
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
@l420
D;JLT
@SP
A=M
M=0
@l421
0;JMP
(l420)
@SP
A=M
M=-1
(l421)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l422
D;JEQ
@Screen.clearScreen$WHILE_END0
0;JMP
(l422)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Screen.1
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
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
@LCL
A=M
M=D
@Screen.clearScreen$WHILE_EXP0
0;JMP
(Screen.clearScreen$WHILE_END0)
// push constant
@0
D=A
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
(Screen.updateLocation)
// push static
@Screen.2
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
@l423
D;JEQ
@Screen.updateLocation$IF_TRUE0
0;JMP
(l423)
@Screen.updateLocation$IF_FALSE0
0;JMP
(Screen.updateLocation$IF_TRUE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Screen.1
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Screen.1
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
@THAT
M=D
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
M=M|D
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
@Screen.updateLocation$IF_END0
0;JMP
(Screen.updateLocation$IF_FALSE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Screen.1
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Screen.1
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
@THAT
M=D
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
// unary operation
@SP
M=M-1
A=M
M=!M
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
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
(Screen.updateLocation$IF_END0)
// push constant
@0
D=A
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
(Screen.setColor)
// push argument
@ARG
A=M
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
@Screen.2
M=D
// push constant
@0
D=A
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
(Screen.drawPixel)
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
@0
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
@l424
D;JLT
@SP
A=M
M=0
@l425
0;JMP
(l424)
@SP
A=M
M=-1
(l425)
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
// push constant
@511
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
@l426
D;JGT
@SP
A=M
M=0
@l427
0;JMP
(l426)
@SP
A=M
M=-1
(l427)
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
// push constant
@0
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
@l428
D;JLT
@SP
A=M
M=0
@l429
0;JMP
(l428)
@SP
A=M
M=-1
(l429)
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
// push constant
@255
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
@l430
D;JGT
@SP
A=M
M=0
@l431
0;JMP
(l430)
@SP
A=M
M=-1
(l431)
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
@SP
M=M-1
A=M
D=M
@l432
D;JEQ
@Screen.drawPixel$IF_TRUE0
0;JMP
(l432)
@Screen.drawPixel$IF_FALSE0
0;JMP
(Screen.drawPixel$IF_TRUE0)
// push constant
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l433
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
@Sys.error
0;JMP
(l433)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawPixel$IF_FALSE0)
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
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l434
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
@2
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
@Math.divide
0;JMP
(l434)
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
// push local
@LCL
A=M
D=M
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
// push return-address
@l435
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
@2
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
@Math.multiply
0;JMP
(l435)
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
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l436
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
@2
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
@Math.multiply
0;JMP
(l436)
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
// push static
@Screen.0
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
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l437
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
@2
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
@Screen.updateLocation
0;JMP
(l437)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Screen.drawConditional)
// push: D = index
@2
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
@SP
M=M-1
A=M
D=M
@l438
D;JEQ
@Screen.drawConditional$IF_TRUE0
0;JMP
(l438)
@Screen.drawConditional$IF_FALSE0
0;JMP
(Screen.drawConditional$IF_TRUE0)
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l439
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
@2
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
@Screen.drawPixel
0;JMP
(l439)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Screen.drawConditional$IF_END0
0;JMP
(Screen.drawConditional$IF_FALSE0)
// push argument
@ARG
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
// push return-address
@l440
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
@2
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
@Screen.drawPixel
0;JMP
(l440)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawConditional$IF_END0)
// push constant
@0
D=A
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
(Screen.drawLine)
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
A=M
M=0
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
// push constant
@0
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
@l441
D;JLT
@SP
A=M
M=0
@l442
0;JMP
(l441)
@SP
A=M
M=-1
(l442)
@SP
M=M+1
// push: D = index
@2
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
// push constant
@511
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
@l443
D;JGT
@SP
A=M
M=0
@l444
0;JMP
(l443)
@SP
A=M
M=-1
(l444)
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
// push constant
@0
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
@l445
D;JLT
@SP
A=M
M=0
@l446
0;JMP
(l445)
@SP
A=M
M=-1
(l446)
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
// push: D = index
@3
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
// push constant
@255
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
@l447
D;JGT
@SP
A=M
M=0
@l448
0;JMP
(l447)
@SP
A=M
M=-1
(l448)
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
@SP
M=M-1
A=M
D=M
@l449
D;JEQ
@Screen.drawLine$IF_TRUE0
0;JMP
(l449)
@Screen.drawLine$IF_FALSE0
0;JMP
(Screen.drawLine$IF_TRUE0)
// push constant
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l450
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
@Sys.error
0;JMP
(l450)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawLine$IF_FALSE0)
// push: D = index
@2
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
M=M-D
@SP
M=M+1
// push return-address
@l451
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
@Math.abs
0;JMP
(l451)
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
// push: D = index
@3
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
// push return-address
@l452
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
@Math.abs
0;JMP
(l452)
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
@l453
D;JLT
@SP
A=M
M=0
@l454
0;JMP
(l453)
@SP
A=M
M=-1
(l454)
@SP
M=M+1
// segment base move
@6
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
@6
D=A
@LCL
M=M-D
// push: D = index
@6
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
// logical operation
D=M-D
@l455
D;JLT
@SP
A=M
M=0
@l456
0;JMP
(l455)
@SP
A=M
M=-1
(l456)
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
// push: D = index
@6
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// push: D = index
@2
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
// logical operation
D=M-D
@l457
D;JLT
@SP
A=M
M=0
@l458
0;JMP
(l457)
@SP
A=M
M=-1
(l458)
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
@SP
M=M-1
A=M
D=M
@l459
D;JEQ
@Screen.drawLine$IF_TRUE1
0;JMP
(l459)
@Screen.drawLine$IF_FALSE1
0;JMP
(Screen.drawLine$IF_TRUE1)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// segment base move
@4
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
@4
D=A
@LCL
M=M-D
// push: D = index
@2
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
@ARG
A=M
M=D
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
// segment base move
@2
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@2
D=A
@ARG
M=M-D
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
// segment base move
@4
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
@4
D=A
@LCL
M=M-D
// push: D = index
@3
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
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
M=M-D
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
// segment base move
@3
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@3
D=A
@ARG
M=M-D
(Screen.drawLine$IF_FALSE1)
// push: D = index
@6
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
@SP
M=M-1
A=M
D=M
@l460
D;JEQ
@Screen.drawLine$IF_TRUE2
0;JMP
(l460)
@Screen.drawLine$IF_FALSE2
0;JMP
(Screen.drawLine$IF_TRUE2)
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
// segment base move
@4
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
@4
D=A
@LCL
M=M-D
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
// push argument
@ARG
A=M
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
@LCL
A=M
M=D
// push: D = index
@3
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
// segment base move
@8
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
@8
D=A
@LCL
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
// push: D = index
@2
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
// logical operation
D=M-D
@l461
D;JGT
@SP
A=M
M=0
@l462
0;JMP
(l461)
@SP
A=M
M=-1
(l462)
@SP
M=M+1
// segment base move
@7
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
@7
D=A
@LCL
M=M-D
@Screen.drawLine$IF_END2
0;JMP
(Screen.drawLine$IF_FALSE2)
// push argument
@ARG
A=M
D=M
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
@LCL
A=M
M=D
// push: D = index
@2
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
// segment base move
@8
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
@8
D=A
@LCL
M=M-D
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
// push: D = index
@3
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
// logical operation
D=M-D
@l463
D;JGT
@SP
A=M
M=0
@l464
0;JMP
(l463)
@SP
A=M
M=-1
(l464)
@SP
M=M+1
// segment base move
@7
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
@7
D=A
@LCL
M=M-D
(Screen.drawLine$IF_END2)
// push constant
@2
D=A
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
// push return-address
@l465
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
@2
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
@Math.multiply
0;JMP
(l465)
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
// segment base move
@5
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
@5
D=A
@LCL
M=M-D
// push constant
@2
D=A
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
// push return-address
@l466
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
@2
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
@Math.multiply
0;JMP
(l466)
// segment base move
@9
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
@9
D=A
@LCL
M=M-D
// push constant
@2
D=A
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
@l467
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
@2
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
@Math.multiply
0;JMP
(l467)
// segment base move
@10
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
@10
D=A
@LCL
M=M-D
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
@6
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
// push return-address
@l468
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
@3
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
@Screen.drawConditional
0;JMP
(l468)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawLine$WHILE_EXP0)
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
@8
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
// logical operation
D=M-D
@l469
D;JLT
@SP
A=M
M=0
@l470
0;JMP
(l469)
@SP
A=M
M=-1
(l470)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l471
D;JEQ
@Screen.drawLine$WHILE_END0
0;JMP
(l471)
// push: D = index
@5
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
// push constant
@0
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
@l472
D;JLT
@SP
A=M
M=0
@l473
0;JMP
(l472)
@SP
A=M
M=-1
(l473)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l474
D;JEQ
@Screen.drawLine$IF_TRUE3
0;JMP
(l474)
@Screen.drawLine$IF_FALSE3
0;JMP
(Screen.drawLine$IF_TRUE3)
// push: D = index
@5
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
@9
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
// segment base move
@5
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
@5
D=A
@LCL
M=M-D
@Screen.drawLine$IF_END3
0;JMP
(Screen.drawLine$IF_FALSE3)
// push: D = index
@5
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
@10
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
// segment base move
@5
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
@5
D=A
@LCL
M=M-D
// push: D = index
@7
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
@SP
M=M-1
A=M
D=M
@l475
D;JEQ
@Screen.drawLine$IF_TRUE4
0;JMP
(l475)
@Screen.drawLine$IF_FALSE4
0;JMP
(Screen.drawLine$IF_TRUE4)
// push local
@LCL
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
@LCL
A=M
M=D
@Screen.drawLine$IF_END4
0;JMP
(Screen.drawLine$IF_FALSE4)
// push local
@LCL
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
(Screen.drawLine$IF_END4)
(Screen.drawLine$IF_END3)
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
@6
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
// push return-address
@l476
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
@3
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
@Screen.drawConditional
0;JMP
(l476)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Screen.drawLine$WHILE_EXP0
0;JMP
(Screen.drawLine$WHILE_END0)
// push constant
@0
D=A
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
(Screen.drawRectangle)
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@2
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
// logical operation
D=M-D
@l477
D;JGT
@SP
A=M
M=0
@l478
0;JMP
(l477)
@SP
A=M
M=-1
(l478)
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
// push: D = index
@3
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
// logical operation
D=M-D
@l479
D;JGT
@SP
A=M
M=0
@l480
0;JMP
(l479)
@SP
A=M
M=-1
(l480)
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
@0
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
@l481
D;JLT
@SP
A=M
M=0
@l482
0;JMP
(l481)
@SP
A=M
M=-1
(l482)
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
// push: D = index
@2
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
// push constant
@511
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
@l483
D;JGT
@SP
A=M
M=0
@l484
0;JMP
(l483)
@SP
A=M
M=-1
(l484)
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
// push constant
@0
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
@l485
D;JLT
@SP
A=M
M=0
@l486
0;JMP
(l485)
@SP
A=M
M=-1
(l486)
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
// push: D = index
@3
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
// push constant
@255
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
@l487
D;JGT
@SP
A=M
M=0
@l488
0;JMP
(l487)
@SP
A=M
M=-1
(l488)
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
@SP
M=M-1
A=M
D=M
@l489
D;JEQ
@Screen.drawRectangle$IF_TRUE0
0;JMP
(l489)
@Screen.drawRectangle$IF_FALSE0
0;JMP
(Screen.drawRectangle$IF_TRUE0)
// push constant
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l490
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
@Sys.error
0;JMP
(l490)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawRectangle$IF_FALSE0)
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
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l491
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
@2
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
@Math.divide
0;JMP
(l491)
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
// push argument
@ARG
A=M
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
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l492
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
@2
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
@Math.multiply
0;JMP
(l492)
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
// segment base move
@7
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
@7
D=A
@LCL
M=M-D
// push: D = index
@2
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
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l493
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
@2
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
@Math.divide
0;JMP
(l493)
// segment base move
@4
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
@4
D=A
@LCL
M=M-D
// push: D = index
@2
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
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l494
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
@2
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
@Math.multiply
0;JMP
(l494)
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
// segment base move
@8
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
@8
D=A
@LCL
M=M-D
// push: D = index
@7
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
// push static
@Screen.0
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
@THAT
M=D
// push that
@THAT
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// segment base move
@6
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
@6
D=A
@LCL
M=M-D
// push: D = index
@8
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
// push static
@Screen.0
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
@THAT
M=D
// push that
@THAT
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
// segment base move
@5
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
@5
D=A
@LCL
M=M-D
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
// push constant
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l495
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
@2
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
@Math.multiply
0;JMP
(l495)
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
(Screen.drawRectangle$WHILE_EXP0)
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
// push: D = index
@3
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
// logical operation
D=M-D
@l496
D;JGT
@SP
A=M
M=0
@l497
0;JMP
(l496)
@SP
A=M
M=-1
(l497)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l498
D;JEQ
@Screen.drawRectangle$WHILE_END0
0;JMP
(l498)
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
// push constant
@0
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
@l499
D;JEQ
@SP
A=M
M=0
@l500
0;JMP
(l499)
@SP
A=M
M=-1
(l500)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l501
D;JEQ
@Screen.drawRectangle$IF_TRUE1
0;JMP
(l501)
@Screen.drawRectangle$IF_FALSE1
0;JMP
(Screen.drawRectangle$IF_TRUE1)
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
@6
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
M=M&D
@SP
M=M+1
// push return-address
@l502
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
@2
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
@Screen.updateLocation
0;JMP
(l502)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Screen.drawRectangle$IF_END1
0;JMP
(Screen.drawRectangle$IF_FALSE1)
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
@6
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
// push return-address
@l503
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
@2
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
@Screen.updateLocation
0;JMP
(l503)
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
@LCL
A=M
M=D
(Screen.drawRectangle$WHILE_EXP1)
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
// logical operation
D=M-D
@l504
D;JLT
@SP
A=M
M=0
@l505
0;JMP
(l504)
@SP
A=M
M=-1
(l505)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l506
D;JEQ
@Screen.drawRectangle$WHILE_END1
0;JMP
(l506)
// push local
@LCL
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
// unary operation
@SP
M=M-1
A=M
M=-M
@SP
M=M+1
// push return-address
@l507
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
@2
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
@Screen.updateLocation
0;JMP
(l507)
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
@LCL
A=M
M=D
@Screen.drawRectangle$WHILE_EXP1
0;JMP
(Screen.drawRectangle$WHILE_END1)
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
@5
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
// push return-address
@l508
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
@2
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
@Screen.updateLocation
0;JMP
(l508)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawRectangle$IF_END1)
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
// segment base move
@1
D=A
@ARG
M=M+D
// pop
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
// segment base restore
@1
D=A
@ARG
M=M-D
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
// push constant
@32
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
@LCL
A=M
M=D
@Screen.drawRectangle$WHILE_EXP0
0;JMP
(Screen.drawRectangle$WHILE_END0)
// push constant
@0
D=A
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
(Screen.drawHorizontal)
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
A=M
M=0
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
// push: D = index
@2
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
// push return-address
@l509
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
@2
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
@Math.min
0;JMP
(l509)
// segment base move
@7
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
@7
D=A
@LCL
M=M-D
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
// push: D = index
@2
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
// push return-address
@l510
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
@2
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
@Math.max
0;JMP
(l510)
// segment base move
@8
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
@8
D=A
@LCL
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
@1
D=A
@SP
A=M
M=D
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
// logical operation
D=M-D
@l511
D;JGT
@SP
A=M
M=0
@l512
0;JMP
(l511)
@SP
A=M
M=-1
(l512)
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
// push constant
@256
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
@l513
D;JLT
@SP
A=M
M=0
@l514
0;JMP
(l513)
@SP
A=M
M=-1
(l514)
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
// push: D = index
@7
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
// push constant
@512
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
@l515
D;JLT
@SP
A=M
M=0
@l516
0;JMP
(l515)
@SP
A=M
M=-1
(l516)
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
// push: D = index
@8
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
// push constant
@1
D=A
@SP
A=M
M=D
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
// logical operation
D=M-D
@l517
D;JGT
@SP
A=M
M=0
@l518
0;JMP
(l517)
@SP
A=M
M=-1
(l518)
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
@SP
M=M-1
A=M
D=M
@l519
D;JEQ
@Screen.drawHorizontal$IF_TRUE0
0;JMP
(l519)
@Screen.drawHorizontal$IF_FALSE0
0;JMP
(Screen.drawHorizontal$IF_TRUE0)
// push: D = index
@7
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
// push constant
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l520
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
@2
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
@Math.max
0;JMP
(l520)
// segment base move
@7
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
@7
D=A
@LCL
M=M-D
// push: D = index
@8
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
// push constant
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l521
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
@2
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
@Math.min
0;JMP
(l521)
// segment base move
@8
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
@8
D=A
@LCL
M=M-D
// push: D = index
@7
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
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l522
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
@2
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
@Math.divide
0;JMP
(l522)
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
// push: D = index
@7
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
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l523
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
@2
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
@Math.multiply
0;JMP
(l523)
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
// segment base move
@9
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
@9
D=A
@LCL
M=M-D
// push: D = index
@8
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
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l524
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
@2
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
@Math.divide
0;JMP
(l524)
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
// push: D = index
@8
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
// push constant
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l525
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
@2
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
@Math.multiply
0;JMP
(l525)
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
// segment base move
@10
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
@10
D=A
@LCL
M=M-D
// push: D = index
@9
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
// push static
@Screen.0
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
@THAT
M=D
// push that
@THAT
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
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
// segment base move
@5
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
@5
D=A
@LCL
M=M-D
// push: D = index
@10
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
// push static
@Screen.0
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
@THAT
M=D
// push that
@THAT
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
// segment base move
@4
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
@4
D=A
@LCL
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
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l526
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
@2
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
@Math.multiply
0;JMP
(l526)
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
// pop
@SP
M=M-1
A=M
D=M
@LCL
A=M
M=D
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
M=M-D
@SP
M=M+1
// segment base move
@6
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
@6
D=A
@LCL
M=M-D
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
@6
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
// push: D = index
@6
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
// push constant
@0
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
@l527
D;JEQ
@SP
A=M
M=0
@l528
0;JMP
(l527)
@SP
A=M
M=-1
(l528)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l529
D;JEQ
@Screen.drawHorizontal$IF_TRUE1
0;JMP
(l529)
@Screen.drawHorizontal$IF_FALSE1
0;JMP
(Screen.drawHorizontal$IF_TRUE1)
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
// push: D = index
@5
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
M=M&D
@SP
M=M+1
// push return-address
@l530
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
@2
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
@Screen.updateLocation
0;JMP
(l530)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Screen.drawHorizontal$IF_END1
0;JMP
(Screen.drawHorizontal$IF_FALSE1)
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
// push return-address
@l531
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
@2
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
@Screen.updateLocation
0;JMP
(l531)
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
@LCL
A=M
M=D
(Screen.drawHorizontal$WHILE_EXP0)
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
@l532
D;JLT
@SP
A=M
M=0
@l533
0;JMP
(l532)
@SP
A=M
M=-1
(l533)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l534
D;JEQ
@Screen.drawHorizontal$WHILE_END0
0;JMP
(l534)
// push local
@LCL
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
// unary operation
@SP
M=M-1
A=M
M=-M
@SP
M=M+1
// push return-address
@l535
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
@2
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
@Screen.updateLocation
0;JMP
(l535)
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
@LCL
A=M
M=D
@Screen.drawHorizontal$WHILE_EXP0
0;JMP
(Screen.drawHorizontal$WHILE_END0)
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
// push return-address
@l536
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
@2
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
@Screen.updateLocation
0;JMP
(l536)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawHorizontal$IF_END1)
(Screen.drawHorizontal$IF_FALSE0)
// push constant
@0
D=A
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
(Screen.drawSymetric)
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
// push: D = index
@3
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@2
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
M=M+D
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
// push: D = index
@2
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
// push return-address
@l537
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
@3
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
@Screen.drawHorizontal
0;JMP
(l537)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
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
// push: D = index
@3
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
M=M+D
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
// push: D = index
@2
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
M=M+D
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
// push: D = index
@2
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
// push return-address
@l538
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
@3
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
@Screen.drawHorizontal
0;JMP
(l538)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
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
// push: D = index
@2
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@3
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@3
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
M=M+D
@SP
M=M+1
// push return-address
@l539
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
@3
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
@Screen.drawHorizontal
0;JMP
(l539)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
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
// push: D = index
@2
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
M=M+D
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
// push: D = index
@3
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
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@3
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
M=M+D
@SP
M=M+1
// push return-address
@l540
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
@3
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
@Screen.drawHorizontal
0;JMP
(l540)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// push constant
@0
D=A
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
(Screen.drawCircle)
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
@0
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
@l541
D;JLT
@SP
A=M
M=0
@l542
0;JMP
(l541)
@SP
A=M
M=-1
(l542)
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
// push constant
@511
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
@l543
D;JGT
@SP
A=M
M=0
@l544
0;JMP
(l543)
@SP
A=M
M=-1
(l544)
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
// push constant
@0
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
@l545
D;JLT
@SP
A=M
M=0
@l546
0;JMP
(l545)
@SP
A=M
M=-1
(l546)
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
// push constant
@255
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
@l547
D;JGT
@SP
A=M
M=0
@l548
0;JMP
(l547)
@SP
A=M
M=-1
(l548)
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
@SP
M=M-1
A=M
D=M
@l549
D;JEQ
@Screen.drawCircle$IF_TRUE0
0;JMP
(l549)
@Screen.drawCircle$IF_FALSE0
0;JMP
(Screen.drawCircle$IF_TRUE0)
// push constant
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l550
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
@Sys.error
0;JMP
(l550)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawCircle$IF_FALSE0)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@2
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
// push constant
@0
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
@l551
D;JLT
@SP
A=M
M=0
@l552
0;JMP
(l551)
@SP
A=M
M=-1
(l552)
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
// push: D = index
@2
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
M=M+D
@SP
M=M+1
// push constant
@511
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
@l553
D;JGT
@SP
A=M
M=0
@l554
0;JMP
(l553)
@SP
A=M
M=-1
(l554)
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
// push: D = index
@2
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
// push constant
@0
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
@l555
D;JLT
@SP
A=M
M=0
@l556
0;JMP
(l555)
@SP
A=M
M=-1
(l556)
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
// push: D = index
@2
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
M=M+D
@SP
M=M+1
// push constant
@255
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
@l557
D;JGT
@SP
A=M
M=0
@l558
0;JMP
(l557)
@SP
A=M
M=-1
(l558)
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
@SP
M=M-1
A=M
D=M
@l559
D;JEQ
@Screen.drawCircle$IF_TRUE1
0;JMP
(l559)
@Screen.drawCircle$IF_FALSE1
0;JMP
(Screen.drawCircle$IF_TRUE1)
// push constant
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l560
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
@Sys.error
0;JMP
(l560)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawCircle$IF_FALSE1)
// push: D = index
@2
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
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// push: D = index
@2
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
// push argument
@ARG
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
// push return-address
@l561
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
@4
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
@Screen.drawSymetric
0;JMP
(l561)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Screen.drawCircle$WHILE_EXP0)
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
// logical operation
D=M-D
@l562
D;JGT
@SP
A=M
M=0
@l563
0;JMP
(l562)
@SP
A=M
M=-1
(l563)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l564
D;JEQ
@Screen.drawCircle$WHILE_END0
0;JMP
(l564)
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
// push constant
@0
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
@l565
D;JLT
@SP
A=M
M=0
@l566
0;JMP
(l565)
@SP
A=M
M=-1
(l566)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l567
D;JEQ
@Screen.drawCircle$IF_TRUE2
0;JMP
(l567)
@Screen.drawCircle$IF_FALSE2
0;JMP
(Screen.drawCircle$IF_TRUE2)
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
// push constant
@2
D=A
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
// push return-address
@l568
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
@2
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
@Math.multiply
0;JMP
(l568)
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
@3
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
@Screen.drawCircle$IF_END2
0;JMP
(Screen.drawCircle$IF_FALSE2)
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
// push constant
@2
D=A
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
M=M-D
@SP
M=M+1
// push return-address
@l569
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
@2
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
@Math.multiply
0;JMP
(l569)
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
@5
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
(Screen.drawCircle$IF_END2)
// push local
@LCL
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
// push return-address
@l570
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
@4
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
@Screen.drawSymetric
0;JMP
(l570)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
@Screen.drawCircle$WHILE_EXP0
0;JMP
(Screen.drawCircle$WHILE_END0)
// push constant
@0
D=A
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
(Memory.init)
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
@Memory.0
M=D
// push constant
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
// push static
@Memory.0
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
// push constant
@14334
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1
// push static
@Memory.0
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
// push constant
@2050
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@0
D=A
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
(Memory.peek)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Memory.0
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
@THAT
M=D
// push that
@THAT
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
(Memory.poke)
// push argument
@ARG
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push static
@Memory.0
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
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
// push constant
@0
D=A
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
(Memory.alloc)
@SP
A=M
M=0
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
// logical operation
D=M-D
@l571
D;JLT
@SP
A=M
M=0
@l572
0;JMP
(l571)
@SP
A=M
M=-1
(l572)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l573
D;JEQ
@Memory.alloc$IF_TRUE0
0;JMP
(l573)
@Memory.alloc$IF_FALSE0
0;JMP
(Memory.alloc$IF_TRUE0)
// push constant
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l574
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
@Sys.error
0;JMP
(l574)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Memory.alloc$IF_FALSE0)
// push constant
@2048
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
(Memory.alloc$WHILE_EXP0)
// push constant
@0
D=A
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
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
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
// logical operation
D=M-D
@l575
D;JLT
@SP
A=M
M=0
@l576
0;JMP
(l575)
@SP
A=M
M=-1
(l576)
@SP
M=M+1
// unary operation
@SP
M=M-1
A=M
M=!M
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l577
D;JEQ
@Memory.alloc$WHILE_END0
0;JMP
(l577)
// push constant
@1
D=A
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
@THAT
M=D
// push that
@THAT
A=M
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
@LCL
A=M
M=D
@Memory.alloc$WHILE_EXP0
0;JMP
(Memory.alloc$WHILE_END0)
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
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
// push constant
@16379
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
@l578
D;JGT
@SP
A=M
M=0
@l579
0;JMP
(l578)
@SP
A=M
M=-1
(l579)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l580
D;JEQ
@Memory.alloc$IF_TRUE1
0;JMP
(l580)
@Memory.alloc$IF_FALSE1
0;JMP
(Memory.alloc$IF_TRUE1)
// push constant
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
// push return-address
@l581
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
@Sys.error
0;JMP
(l581)
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
(Memory.alloc$IF_FALSE1)
// push constant
@0
D=A
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
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
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
// logical operation
D=M-D
@l582
D;JGT
@SP
A=M
M=0
@l583
0;JMP
(l582)
@SP
A=M
M=-1
(l583)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l584
D;JEQ
@Memory.alloc$IF_TRUE2
0;JMP
(l584)
@Memory.alloc$IF_FALSE2
0;JMP
(Memory.alloc$IF_TRUE2)
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
M=M+D
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
// push constant
@0
D=A
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
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
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
M=M-D
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
@THAT
M=D
// push that
@THAT
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
// logical operation
D=M-D
@l585
D;JEQ
@SP
A=M
M=0
@l586
0;JMP
(l585)
@SP
A=M
M=-1
(l586)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l587
D;JEQ
@Memory.alloc$IF_TRUE3
0;JMP
(l587)
@Memory.alloc$IF_FALSE3
0;JMP
(Memory.alloc$IF_TRUE3)
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
@3
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
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
// push constant
@4
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
@Memory.alloc$IF_END3
0;JMP
(Memory.alloc$IF_FALSE3)
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
@3
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
// push constant
@1
D=A
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
@THAT
M=D
// push that
@THAT
A=M
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
(Memory.alloc$IF_END3)
// push constant
@1
D=A
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
// push local
@LCL
A=M
D=M
@SP
A=M
M=D
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
M=M+D
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
(Memory.alloc$IF_FALSE2)
// push constant
@0
D=A
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
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
(Memory.deAlloc)
@SP
A=M
M=0
@SP
M=M+1
A=M
M=0
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
@LCL
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
@THAT
M=D
// push that
@THAT
A=M
D=M
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
@0
D=A
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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push that
@THAT
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant
@0
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
@l588
D;JEQ
@SP
A=M
M=0
@l589
0;JMP
(l588)
@SP
A=M
M=-1
(l589)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l590
D;JEQ
@Memory.deAlloc$IF_TRUE0
0;JMP
(l590)
@Memory.deAlloc$IF_FALSE0
0;JMP
(Memory.deAlloc$IF_TRUE0)
// push constant
@0
D=A
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
// push constant
@1
D=A
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
@THAT
M=D
// push that
@THAT
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
M=M-D
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
@Memory.deAlloc$IF_END0
0;JMP
(Memory.deAlloc$IF_FALSE0)
// push constant
@0
D=A
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
// push constant
@1
D=A
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
@THAT
M=D
// push that
@THAT
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
M=M-D
@SP
M=M+1
// push constant
@0
D=A
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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push that
@THAT
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
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
// logical operation
D=M-D
@l591
D;JEQ
@SP
A=M
M=0
@l592
0;JMP
(l591)
@SP
A=M
M=-1
(l592)
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@l593
D;JEQ
@Memory.deAlloc$IF_TRUE1
0;JMP
(l593)
@Memory.deAlloc$IF_FALSE1
0;JMP
(Memory.deAlloc$IF_TRUE1)
// push constant
@1
D=A
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
// push local
@LCL
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
M=M+D
@SP
M=M+1
// pop
@SP
M=M-1
A=M
D=M
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
@Memory.deAlloc$IF_END1
0;JMP
(Memory.deAlloc$IF_FALSE1)
// push constant
@1
D=A
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
// push constant
@1
D=A
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
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push that
@THAT
A=M
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
@R5
M=D
// pop
@SP
M=M-1
A=M
D=M
@THAT
M=D
// push temp
@R5
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
A=M
M=D
(Memory.deAlloc$IF_END1)
(Memory.deAlloc$IF_END0)
// push constant
@0
D=A
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
