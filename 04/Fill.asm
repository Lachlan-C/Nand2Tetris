// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
@8192
D=A
@count 
M=D

(LOOP)
@KBD
D=M
@CLEAR
D;JEQ

(BLACK)
@i
M=0
(BLACKLOOP)
@i
D=M
@count
D=D-M
@LOOP
D;JEQ
@SCREEN
D=A
@i
A=D+M
M=-1
@i
M=M+1
@BLACKLOOP
0;JMP

(CLEAR)
@i
M=0
(CLEARLOOP)
@i
D=M
@count
D=D-M
@LOOP
D;JEQ
@SCREEN
D=A
@i
A=D+M
M=0
@i
M=M+1
@CLEARLOOP
0;JMP





