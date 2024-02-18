; DIRECT ADDRESSING
;a program to add three nos directly in memory i.e only using ax register
[org 0x0100]
	mov ax, [num]
	add ax, [num+2]	
	mov [num+6], ax
	mov ax, [num+4]
	add [num+6], ax
mov ax, 0x4c00
int 0x21
num: 	dw  4,  10,   15,   0   ; declaring label / variable