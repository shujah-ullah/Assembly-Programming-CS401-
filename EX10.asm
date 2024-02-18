; program to swap every pair of bits in the AX register. 
[org 0x100]

mov ax, 0x5555
mov cx , 8

loop_start
	mov bx, ax
	rol  ax,  1
	ror bx,   1
	and  ax,  0xaaaa
	and  bx,  0x5555
	or ax,  bx
loop loop_start

mov ax, 0x4c00
int 0x21



		