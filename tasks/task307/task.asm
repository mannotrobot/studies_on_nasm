; write a code that reads from stdin character
; if it is A, then output YES
; if it is not A then output NO

section .data
	char	db	"A"
	stryes	db	"YES",0xA,3
	strno	db	"NO", 0xA,2

section .bss
section	.text
	global main
main:
	push 	rbp
	mov 	rbp, rsp
	mov	eax, 4
	int	4
	mov	rsp, rbp
	pop	rbp
	ret
