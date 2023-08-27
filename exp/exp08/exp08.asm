; calculate
extern printf

section .data
	number1	dq	128
	number2	dq	19
	neg_num	dq	-12
	fmt	db	"The numbers are %ld and %ld",0xA,0
	fmtint	db	"%s %ld",0xA,0
	sumi	db	"The sum is",0
	difi	db	"The difference is",0
	inci	db	"Number 1 incremented:",0
	deci	db	"Number 1 decremented:",0
	sali	db	"Number 1 shift left 2 (x4):",0
	sari	db	"Number 1 shift right 2 (/4): ",0
	sariex	db	"Number 1 shift right 2 (/4) with "
		db	"sign extension:",0
	multi	db	"The product is",0
	divi	db	"The integer quotient is",0
	remi	db	"The modulo is",0

	bye	db	"GoodBye",0xA,0
section .bss
	resulti	resq	1
	modulo	resq	1
section	.text
	global main
main:
	push 	rbp
	mov	rbp,rsp
; out numbers
	mov	rdi, fmt
	mov	rsi, [number1]
	mov	rdx, [number2]
	mov	rax, 0
	call	printf
; add
	mov	rax, [number1]		; moving number1 in  rax
	add	rax, [number2]		; add number2 and rax
	mov	[resulti], rax		; moving result from rax
	mov	rbx, difference
	mov	rsi, sumi
	jmp	display

difference:
	mov	rax, [number1]
	sub	rax, [number2]
	mov	[resulti], rax
	mov	rbx, increnent
	mov	rsi, difi
	jmp	display

increnent:
	mov	rax, [number1]
	inc	rax
	mov	[resulti], rax
	mov	rbx, decrement
	mov	rsi, inci
	jmp	display

decrement:
	mov	rax, [number1]
	dec	rax
	mov	[resulti], rax
	mov	rbx, alshift
	mov	rsi, deci
	jmp	display

alshift:
	mov	rax, [number1]
	sal	rax, 2
	mov	[resulti], rax
	mov	rbx, alright
	mov	rsi, sali
	jmp	display

alright:
	mov	rax, [number1]
	sar	rax, 2
	mov	[resulti], rax
	mov	rbx, alrights
	mov	rsi, sari
	jmp	display

alrights:
	mov	rax, [neg_num]
	sar	rax, 2
	mov	[resulti], rax
	mov	rbx, mulnums
	mov	rsi, sariex
	jmp	display

mulnums:
	mov	rax,[number1]
	imul	qword [number2]
	mov	[resulti], rax
	mov	rbx, divnums
	mov	rsi, multi

divnums:
	mov	rax, [number1]
	mov	rdx, 0
	idiv	qword [number2]
	mov	[resulti], rax
	mov	[modulo], rdx

	mov	rdi, fmtint
	mov	rsi, divi
	mov	rdx, [resulti]
	mov	rax, 0
	call	printf
	mov	rdi, fmtint
	mov	rsi, remi
	mov	rdx, [modulo]
	mov	rax, 0
	call	printf
	jmp	exit

display:
	mov	rdi, fmtint
	mov	rdx, [resulti]
	mov	rax, 0
	call	printf
	jmp	rbx

exit:
	mov	rdi, bye
	mov	rax, 0
	call	printf
	mov	rsp, rbp
	pop	rbp
	ret
