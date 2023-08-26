; jump.asm

extern printf

section .data
	number1    dq    42
	number2    dq	 43
	ftm1       db	 "number1 > = number2",10,0
	ftm2	   db    "number1 < number2",10,0
section .bss
section .text
	global main
main:
	push	rbp
	mov	rbp, rsp
	mov	rax, [number1]		; передача числа в регистр
	mov	rbx, [number2]		; передача числа в регистр
	cmp	rax, rbx		; сравнение значений в регистр
	jge	greater			; переход к метке greater if rax >= rbx

	mov     rdi, ftm2		; если меньше то выполнить это
	mov	rax, 0
	call	printf
	jmp	exit			; переход к метке exit

greater:
	mov	rdi, ftm1
	mov	rax, 0
	call	printf

exit:
	mov	rsp,rbp
	pop	rbp
	ret
