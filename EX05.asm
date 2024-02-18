; Register INDIRECT Addressing 
; a program to add three nos using indirect addressing

[org 0x0100]
	mov bx, num   ; point bx to first no. note label num isn,t surrounded by [] means that bx contains adress of label num not its data  
	mov ax , [bx]      ; load first no to ax
	add bx , 2          ; point bx to second number 
	add ax , [bx]      ; [] will take data at given index
	add bx , 2         ; point bx to third number
	add ax , [bx]
	add bx, 2         ; bx now pointing to last no
	mov [bx], ax     ; store sum to num+6
mov ax, 0x4c00
int 0x21
num: 	dw   5,  10,  15,  0 