; multiplication of 4 bit no
[org 0x100]

	jmp   start
multiplicant:  db  13
multiplier	 :  db   5
result	 :  db   0

start:	mov cl,  4    		  ;initialize counter
	mov al,  [multiplicant]   	  ; load multiplicant
	mov bl,  [multiplier] 	 	  ; load multiplier

checkbit:	shr   bl,  1       	 	 ; mov right most bit of multiplier right
	jnc   skip	              	 	 ; mov to skip section if moved bit isnt 1
	add [result], al  		 ;accumulate multiplicand to result if carry bit is 1

skip:	shl   al,  1 		 ; mov multiplicant 1 bit left if carry is zero
	dec    cl                  		 ; decrement counter register 
	jnz  checkbit		 ; repeat loop from  start section if counter isnt zero

mov  ax,  0x4c00
int  0x21
	

