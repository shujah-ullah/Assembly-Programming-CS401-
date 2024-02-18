; DIRECT ADDRESSING
; a program to add three nos accessed using single label
	[org 0x100]
	
	mov ax, [num1]
	mov bx, [num1+2]
	add ax, bx
	mov bx, [num1+4]
	add ax, bx
	mov [num1+6], ax
mov ax, 0x4c00
int 0x21
		
; declaring label / variable
num1: 	dw 	5, 10, 15,  0