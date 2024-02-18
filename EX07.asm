; Indirect Register + Offset Addressing
; a program to add ten numbers
[org 0x0100]
	mov bx, 0       ; initialize array index to zero
	mov cx, 10     ; load count in cx for looping
	mov ax, 0       ; initialize sum with zero

label: 	add ax,  [num+bx]   ; add number to ax, bx act as adress index incrementer
	add bx , 2       ; reposition bx to next no
	sub cx, 1        ; decrement count by 1
	jnz label	      ; jump program counter IP to label and start executing program from there, continue untill zero flag isnt set.
	
	mov [total], ax   ; write back sum in memory
	
	mov ax, 0x4c00
	int 0x21

num: 	dw  10, 20, 30, 40, 50, 60, 70, 80, 90, 100 
total:	dw   0