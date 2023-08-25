; hello.asm
global _start

section .data
    msg    db    "hEllo, world",0
section .bss
section .text

_start: mov rax, 1         ; 1 = record
        mov rdi, 1         ; 1 = in stdoin
        mov rsi, msg       ; в регистр rsi msg
        mov     rdx, 12    ; в регистр rdx занести длину строки без 0
        syscall            ; вывести на экран;
        mov     rax, 60    ; в регистр rax занести значение 60
        mov     rdi, 0     ; в регистр rdi занести значение 0
        syscall            ; выход
