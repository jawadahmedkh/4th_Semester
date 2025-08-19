section .data
    districts db "Here are the Districts of AJ&K",10, \
              db "1. Neelum, The land where peoples are just want ""Land""", 10, \
              db "2. All other districts."
    len equ $ - districts

section .text
    global _start


_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, districts
    mov edx, len
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h