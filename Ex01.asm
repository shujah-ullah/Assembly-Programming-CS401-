;DIRECT ADDRESSING
; a program to add three numbers using registers
[org 0x0100]
	mov ax,  5
	mov bx, 10
	add ax, bx
	mov bx, 10
	add ax, bx

	mov ax, 0x4c00     ;terminate program
	int 0x21