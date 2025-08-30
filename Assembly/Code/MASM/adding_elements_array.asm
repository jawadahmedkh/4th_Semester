; Title: Calculating the Sum of Elements of Array

.686
INCLUDE Irvine32.inc 

.data
    arrayD dd 10,20,30
.code
    Main PROC
        mov eax, 0
        mov esi, 0 ; Base Address of the Array
        mov edi, SIZEOF arrayD

        sum_loop: ; Loop to calculate the sum
            cmp esi, edi
            jge sumDone

            add eax, arrayD[esi]
            add esi, TYPE arrayD

            jmp sum_loop

        sumDone: ;label to jump when the loop breaks
            Call WriteInt
            Call Crlf
        
        Main ENDP
        END Main
            