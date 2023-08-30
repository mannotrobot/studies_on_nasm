; stack.asm
extern printf
section .data
	strng	db	"ABCDE",0
	strlen	equ	$ - strng-1;
	ftm1	db	"The original string: %s",0xA,0
	ftm2	db	"The reversed string: %s",10,0
section	.bss
section	.text
	global main
main:
	push 	rbp
	mov	rbp, rsp

	mov	rdi, ftm1
	mov	rsi, strng
	mov	rax, 0
	call	printf
	mov	r12, 0

	xor	rax, rax
	mov	rbx, strng
	mov	rcx, strlen
	mov	r12, 0
pushloop:
	mov	al, byte [rbx+r12]
	push	rax
	inc	r12
	loop	pushloop

	mov	rbx, strng
	mov	rcx, strlen
	mov	r12, 0
poploop:
	pop	rax
	mov	byte [rbx+r12], al
	inc	r12
	loop	poploop
	mov	byte [rbx+r12],0

	mov	rdi, ftm2
	mov	rsi, strng
	mov	rax, 0
	call	printf

	mov	rsp, rbp
	pop	rbp
	ret
