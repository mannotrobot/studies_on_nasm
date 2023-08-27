; jumploop simple loop using jle
extern printf
section .data
	number    dq	5
	fmt	  db	"The sum from 0 to %ld is %ld",0xA,10
section .bss
section .text
	global main
main:
	push	rbp
	mov	rbp, rsp
	mov	rbx, 0
	mov	rax, 0
jloop:
	add	rax, rbx
	inc	rbx
	cmp	rbx, [number]
	jle	jloop

	mov	rdi, fmt
	mov	rsi, [number]
	mov	rdx, rax
	mov	rax, 0
	call	printf
	mov	rsp, rbp
	pop	rbp
	ret


