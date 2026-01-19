org 0000h
	;-- Initialize registers --;
	mov	p1,	#0fbh	;-- Assign P1(8 bits) = hex(FB)
	mov	r0,	#40h	;-- R0 = hex(40)
	mov	a,	p1	;-- Load Accumulator with P1 = hex(FB)

	;-- Perform operations on A & B registers --;
loop:
	mov	b,	#0ah	;-- Initialize B = dec(10)
	div	ab		;-- Accumulator = Quotient(A/B), B = remainder(A/B)
	
	;-- Add hex(30) to B --;
	xch	a,	b	;-- Swap A,B
	add	a,	#30h	;-- Accumulator += hex(30) [Effectively B += hex(30)]
	xch	a,	b	;-- Swap A,B
	
	inc	r0
	jnz	loop		;-- Loopback till Accumulator[Quotient(A/B)] is zero
;------------ loop END ----------;
;------- main program END -------;

here:	sjmp	here

end
