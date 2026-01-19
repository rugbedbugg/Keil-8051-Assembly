org 0000h
	;-- Initialize registers to be used --;
	clr	a
	clr	r0
	clr	r7


	;-- Load hex(92) for addition --;
	mov	a,	#92h	

	;-- Add first number --;
	mov	r0,	#23h	;-- Using register addressing mode to add
	add	a,	r0
	jnc	N1		;-- Check for carry
	inc	r7		;-- If carry, increment counter

	;-- Add second number --;
N1:	mov	r0,	#60h
	add	a,	r0
	jnc	N2
	inc	r7

	;-- Add third number --;
N2:	mov	r0,	#87h
	add	a,	r0
	jnc	N3
	inc	r7

	;-- Add fourth number --;
N3:	mov	r0,	#0f5h
	add	a,	r0
	jnc	loop
	inc	r7
;--------- main program END -------;

loop:	sjmp	loop

end
