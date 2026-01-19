org 0000h
	mov 	dptr, 	#0200h	;-- ROM memory access location
	

;-- 1. ROM-RAM Memory Transfer --;
	mov	r0,	#40h	;-- RAM memory storage location
	mov	r1,	#0e0h	;-- Accumulator address location

loop:	;-- Move from ROM(codespace) to RAM(Accumulator)
	clr	a
	
	movc	a,	@a+dptr	;-- ROM to Accumulator (@a=0, dptr=200h)
	mov	@r0,	a	;-- Accumulator to RAM location
	
	inc	r0		
	inc	dptr
	
	djnz	r1,	loop
;----------- loop END -----------;
;-- 2. RAM-RAM memory transfer --;
	mov	r0,	#40h	;-- RAM memory storage location#1 (Already has data)
	mov	r1,	#60h	;-- RAM memory storage location#2
	mov	r2,	#0e0h	;-- Accumulator address location

loop2:	;-- Move from RAM(Accumulator) to RAM(loc: 40h & 60h)
	clr	a
	
	mov	a,	@r0	;-- RAM location#1 to Accumulator
	mov	@r1,	a	;-- Accumulator to RAM location#2
	
	inc	r0
	inc	r1
	
	djnz	r2,	loop2
;---------- loop2 END -----------;
;------ main program END --------;

here:	sjmp	here

;---------- ROM memory ----------;
org 0200h
	db "VIT UNIVERSITY"
end
