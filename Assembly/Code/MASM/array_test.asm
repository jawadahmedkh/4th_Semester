.686
INCLUDE Irvine32.inc 

.data
    arrayD dd 1,2,3

.code
    Main PROC
      mov eax, arrayD[8]      ; eax = arrayD[2]
      xchg eax, arrayD[0]     ; swap with ebx
      xchg eax, arrayD[8]    ; swap with eax

      mov eax, arrayD[0]
      call WriteHex
      call Crlf
      mov eax, arrayD[4]
      call Writehex
      call Crlf
      mov eax, arrayD[8]
      call Writehex
      call Crlf
    Main ENDP
    END Main
