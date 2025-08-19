section .data
    info db "Subjects Information", 10
        db "1. CO&L, This Subject is about the Assembly language of computer and it's Organization.", 10
        db "2. DB, This Subject is about the Database Systems.", 10
        db "3. CN, This Subject is about computer network.", 10
        db "4. T&BW, This Subject is about Technical and Business Writing", 10
        db "5. FA, This Subject is about '$'.", 10
        db "6. TA&FL, This subject is about Theory of Automata and Formal Languages.", 10
        db "7. Arabic, This subject is about my favorite subject named Arabic", 0
    len equ $ - info

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, info
    mov edx, len
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h