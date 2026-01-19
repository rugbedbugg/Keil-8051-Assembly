org 0000h
	;-- Stack pointer shifted elsewhere --;
	;-- Here, manually moved stack pointer to new location --;
	;-- We intend to make this the top of stack by filling elements up to it --;
	mov	sp,	#0dh
	
	;-- Manually filling stack as RAM locations --;
	mov	08h,	#10h	;-- default stack[0]
	mov	09h,	#11h	;-- default stack[1]
	mov	0ah,	#12h	;-- default stack[2]
	mov	0bh,	#13h	;-- default stack[3]
	mov	0ch,	#14h	;-- default stack[4]
	mov	0dh,	#15h	;-- default stack[5]

	;-- Pop elements --;
	pop	0		;-- pop to 00h (R0 B-0)
	pop	1		;-- pop to 01h (R1 B-0)
	pop	2		;-- pop to 02h (R2 B-0)
	pop	3		;-- pop to 03h (R3 B-0)
	pop	4		;-- pop to 04h (R4 B-0)
;------- main program END -------;

loop:	sjmp	here

end
