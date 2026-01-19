org 0000h
	;----- Addition ------;
	clr	a		;-- Good practice to clear Accumulator
	mov	a,	#05h	;-- Load Accumulator w/ hex(5)
	mov	r0,	#05h	;-- Load R0 (Bank-0) w/ hex(5)
	add	a,	r0	;-- Acc = Acc + R0
	mov	r0,	a	;-- R0 = Acc

	;---- Subtraction ----;
	clr	a
	mov	a,	#05h
	mov	r1,	#05h
	subb	a,	r1	;-- Acc = Acc - R1
	mov	r1,	a	;-- R1 = Acc

	;--- Multiplication --;
	clr	a
	mov	a,	#05h
	mov	b,	#05h
	mul	ab		;-- Acc = A*B	(mul instr. only take input from A,B)
	mov	r2,	a	;-- R2 = Acc

	;------ Division -----;
	clr	a
	mov	a,	#05h
	mov	b,	#05h
	div	ab		;-- Acc = A/B	(div instr. only take input from A,B)
	mov	r3,	a	;-- R3 = Acc

here:	sjmp	here		;-- Infinite loop to prevent crash

end
