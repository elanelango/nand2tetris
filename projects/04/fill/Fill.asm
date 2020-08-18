// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.
@24575
D=A
@endpixel
M=D
(LOOP)
@KBD
D=M
@BLACK
D;JNE
@color
M=0
@DRAW
0;JMP
(BLACK)
@color
M=1
(DRAW)
@SCREEN
D=A
@currpixel
M=D
(PIXELLOOP)
@currpixel
D=M
@endpixel
D=D-M
@LOOP
D;JGT
@currpixel
A=M
M=0
@color
D=M
@SKIPBLACK
D;JEQ
@currpixel
A=M
M=!M
(SKIPBLACK)
@currpixel
M=M+1
@PIXELLOOP
0;JMP