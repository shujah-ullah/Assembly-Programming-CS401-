;DIRECT ADDRESSING
; a program to add three numbers using memory labels
[org 0x0100]

mov ax,[num1]	;load value stored in variable in register ax
mov bx , [num2]	;load value stored in variable in register bx
add ax , bx	;add value of bx to ax and accumulate result in ax
mov bx, [num3]	;load value stored in num3 variable in register bx
add ax, bx		;accumulate sum in ax 
mov [num4], ax	;store sum in num4 variable

mov ax, 0x4c00	;terminate program
int 0x21

num1: 	dw  5    ;declaring labels / variables
num2: 	dw  10
num3: 	dw 15
num4: 	dw  0