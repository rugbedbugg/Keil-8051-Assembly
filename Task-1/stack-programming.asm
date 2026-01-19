org 0000h
	;-- Initialize registers --;
	clr	r0
	clr	r1
	clr	r2
	clr	r3
	clr	r4

	;-- Store values in registers for stack operation --;
	mov 	r0,	#25h
	mov	r1,	#35h
	mov	r2, 	#45h
	mov	r3,	#55h
	mov	r4,	#65h
		
	;-- Push only takes register addressing mode --;
	;-- Only takes direct values as input
	;-- By default:
	;-- 	1. when empty, SP(stack pointer) points to '07h' [-1 index]
	;--	2. Default register Bank-1 is used for stack ('08h' = R0 B-1)
	push	0		;-- push 00h(aka R0 B-0) (into stack pointer SP)
	push	1		;-- push 01h(aka R1 B-0) (into stack pointer SP)
	push	2		;-- push 02h(aka R2 B-0) (into stack pointer SP)
	push	3		;-- push 03h(aka R3 B-0) (into stack pointer SP)
	push	4		;-- push 04h(aka R4 B-0) (into stack pointer SP)
;------- main program END--------;

loop:	sjmp	here

end
