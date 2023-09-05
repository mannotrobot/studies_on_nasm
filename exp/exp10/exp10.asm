; fcalc.asm
extern printf
section .data
	number1	dq	9.0
	number2	dq	73.0
	fmt	db	"The numbers are %f and %f",0xA,0
	fmtflt	db	"%s %f",0xA,0
	f_sum	db	"The float sum of %f and %f is %f",0xA,0
	f_dif	db	"The float dif of %f and %f is %f",0xA,0
	f_mul	db	"The float pro of %f and %f is %f",0xA,0
	f_div	db	"The float div of %f and %f is %f",0xA,0
	f_sqrt	db	"The float squareroot of %f and %f is %f",0xA,0
section .bss
section .text
	global main
main:
	push	rbp
	mov	rbp, rsp

	movsd	xmm0, [number1]
	movsd	xmm1, [number2]
	mov	rdi, fmt
	mov	rax, 2
	call	printf

; sum
	movsd	xmm2, [number1]
	addsd	xmm2, [number2]

	movsd	xmm0, [number1]
	movsd	xmm1, [number2]
	mov	rdi, f_sum
	mov	rax, 3
	call	printf
; sub
	movsd	xmm2, [number1]
	subsd	xmm2, [number2]

	movsd	xmm0, [number1]
	movsd	xmm1, [number2]
	mov	rdi, f_dif
	mov	rax, 3
	call	printf
; div
	movsd	xmm2, [number1]
	divsd	xmm2, [number2]

	movsd	xmm0, [number1]
	movsd	xmm1, [number2]
	mov	rdi, f_div
	mov	rax, 1
	call	printf
; sqrt
	sqrtsd	xmm1, [number1]
	mov	rdi, f_sqrt
	movsd	xmm0, [number1]
	mov	rax, 2
	call	printf
; exit
	mov	rsp, rbp
	pop	rbp
	ret
