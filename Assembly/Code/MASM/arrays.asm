.686
INCLUDE Irvine32.inc

.data
    arrayW WORD 1020h, 3040h, 5060h
    arrayD DWORD 1,2,3,4
.code
  Main PROC 
    Call clrscr
    mov ax, arrayW-2
    Call Writehex
    Exit
   Main ENDP
   END Main
