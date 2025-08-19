section .data
    departments db "Here are the Departments in UAJ&K Neelum Campus", 10, \
                "1. CS, This Computer Science Department", 10, \
                "2. English, This is English Department", 0
    len equ $ - departments

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, departments
    mov edx, len
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h