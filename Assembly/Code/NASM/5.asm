section .data
    result dd 0      ; to store sum

section .text
    global _start

_start:
    mov eax, 10 
    add eax, 20
    mov [result], eax ; store the sum in result

    ; Exit program
    mov eax, 1       ; syscall: sys_exit
    mov ebx, 0       ; exit code 0
    int 0x80
