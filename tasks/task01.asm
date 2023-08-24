global _start                     ; point enter


section .data                     ; segment data 
msg     db  "Hello world", 10
msg_len equ $-msg


section .text                     ; segment machine code
_start: mov    eax, 4             ; call write
        mov    ebx, 1             ; stdout
        mov    ecx, msg
        mov    edx, msg_len
        int    80h


        mov    eax, 1
        mov    ebx, 0
        int    80h
