.686
INCLUDE Irvine32.inc 

.data
    arrayD dd 10,20,30,40,50
    size_of_array = SIZEOF arrayD   ; total bytes in array
    number_of_elements = LENGTHOF arrayD      ; total elements
    size_per_element = TYPE arrayD  ; size of one element

.code
    Main PROC
        mov esi, 0
        mov edi, size_of_array - size_per_element
    reverse_loop:
        cmp esi, edi
        jge done_reverse

        mov eax, arrayD[esi]
        mov ebx, arrayD[edi]

        mov arrayD[edi], eax
        mov arrayD[esi], ebx

        add esi, size_per_element
        sub edi, size_per_element
        jmp reverse_loop
    
    done_reverse:
        mov esi, 0
        mov ecx, number_of_elements
        jmp print_loop

    print_loop:
        mov eax, arrayD[esi]
        call Writeint
        call Crlf
        add  esi, size_per_element
        loop print_loop

     Main ENDP
    END Main