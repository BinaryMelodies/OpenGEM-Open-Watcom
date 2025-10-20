
;  FARDRAW .ASM   3/22/85     Tim Oren
;  SFARDRAW.AS    7 Jan 1998  John Elliott
;
;  This is a callback function to which GEM passes parameters in AX and BX.
; Since Pacific C does not support this directly, assembly language 'glue'
; code is used.
;
;
;	far_draw()
;		ax = hi part of long pointer to PARMBLK
;		bx = lo part of long pointer to PARMBLK
;
;	need to save the regs, get on a local stack, and call
;	the dr_code() routine with the parameters pointed at
;	in PARMBLK
;
;   [JCE] In Pacific C, we can use built-in compiler support to set up
;   the segments and switch to a local stack; dr_code has to be declared
;   as 'interrupt'. So all the asm code has to do is handle parameters.
;
;   In Pacific C the best way of doing this is to store the
;   parameters in a global variable (drawparam). To get a
;   result out, we use the global variable drawret in the same
;   way. 

;	EXTERN	small_data:BYTE
;	EXTERN	small_code:BYTE
;	.psect	_TEXT,class=CODE
_TEXT	segment public 'COJDE'
	PUBLIC	__far_draw
	EXTERN  _dr_code_:FAR PROC


__far_draw:
	push	ds
	push	ax				;Set DS to our data, so that we can write to 
	mov	ax,seg __drawpar	;variables like drawpar.
	mov		ds,ax
	pop		ax
	mov		__drawpar, bx		;low word
	mov		__drawpar + 2, ax	;high word

	pushf			 ;dr_code will return with an iret, so simulate an 
	call	far ptr _dr_code_ ;interrupt call.
	
	mov		ax,__drawret
	pop		ds
	retf
_TEXT	ends

;	.psect	data,class=DATA
data	segment public 'DATA'
	PUBLIC	__drawaddr
	PUBLIC	__drawpar
	PUBLIC	__drawret
	EVEN
__drawaddr:
	word	__far_draw,seg (__far_draw)
__drawpar word	0,0
__drawret:
	word	0

data	ends
	end

