org 0000h
	;-- Initialize registers --;
	mov	dptr,	#200h	;-- Referencing codespace into dptr (Data pointer)
	mov	r0,	#10h	;-- loop iterates hex(10) times

	;-- ROM to RAM transfer --;
	;-- one number at a time --;
loop:
	clr	a
	movc	a,	@a+dptr	;-- ROM to Accumulator
	add	a,	r1	;-- Add stored number in R1 (Bank-0) to Accumulator
	
	jnc	next		;-- Track carry bit (if-else)
	inc	r2		;-- Stores carry bit info

next:	inc	dptr		;-- Goto next number stored in ROM
	mov	r1,	a	;-- Store from Accumulator to Register R1 (Bank-0)

	djnz	r0,	loop	;-- Decrement loop counter
;----------- loop END -----------;
;------- main program END -------;

here:	sjmp	here

;------- ROM Memory -------;
org 0200h
	db 92h, 43h, 23h, 34h, 31h, 77h, 91h, 33h, 43h, 7h
end
