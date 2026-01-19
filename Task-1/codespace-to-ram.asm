org 0000h
	clr	a
	mov	dptr,	#0200h	;-- Store starting location of ROM
	mov	r1,	#0eh	;-- Length of string stored in ROM (loop length)
	mov	r0,	#40h	;-- Starting location of string in RAM

	;-- Transfer the string from ROM to RAM --;
	;-- 1 character at a time --;
loop:
	clr	a
	
	movc	a,	@a+dptr	;-- movc -> move character
	mov	@r0,	a	;-- store location of a in r0
	
	;-- Prepare pointers for next char transfer --;
	inc	dptr		;-- Increment read pointer
	inc	r0		;-- Increment write pointer
	
	;-- loopback till whole string is transferred --;
	djnz	r1,	loop
;---------- main program END -----------;

here:	sjmp,	here

;------------- ROM Memory --------------;
org 0200h
	db 	"VIT UNIVERSITY"
end
