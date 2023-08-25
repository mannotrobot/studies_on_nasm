; exp04
section .data
	radius	dd	23
	pi	dq	3.14
	frad	db	"%d",0xA,0
	fpi	db	"%lf",0xA,0
section .bss
section .text
extern printf
	global main
main:
	push	rbp
	mov	rbp, rsp

	mov	rax, 0
	mov	rdi, frad
	mov	rsi, [radius]
	call	printf

	mov	rax, 1
	movq	xmm0, [pi]
	mov	rdi, fpi
	call	printf
	mov	rsp, rbp
	pop	rbp
ret
