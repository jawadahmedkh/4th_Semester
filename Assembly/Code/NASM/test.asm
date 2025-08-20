extern printf

section .data
    format_string db "%d", 10, 0 ; Format string for printf ("%d\n")

section .text
    global _start
_start:
    ; ... (set up stack alignment if needed)

    mov esi, 12345 ; Load the number into a register
    lea rdi, [rel format_string] ; Load address of format string
    xor eax, eax                 ; No floating-point arguments
    call printf

    ; ... (clean up stack and exit)