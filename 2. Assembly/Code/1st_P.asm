.686
INCLUDE Irvine32.inc

.DATA
Nam byte "Abdual Qaddous", 0dh, 0ah
 Byte "My Contact 0355-8073602", 0dh, 0ah
 Byte "I Have Assign a Lab Task to my student", 0dh, 0ah
 Byte "It Was Just Starting Of Lab Task", 0
 
.CODE
Main PROC
Call clrscr
Lea edx, nam
Call WriteString
Call DumpRegs
Exit
Main ENDP
 END MainEND Main
