section .data
    nam db "Abdual Qaddous", 10
        db "My Contact 0355-8073602", 10
        db "I Have Assign a Lab Task to my student", 10
        db "It Was Just Starting Of Lab Tsk", 0

section .text
    global _start

_start:
    ; Write the message
    mov eax, 4          ; sys_write
    mov ebx, 1          ; file descriptor (stdout)
    mov ecx, nam        ; message to write
    mov edx, 100        ; message length (adjust as needed)
    int 0x80

    ; Exit program
    mov eax, 1          ; sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80
