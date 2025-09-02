.686
INCLUDE Irvine32.inc 
.data
    msg BYTE "Hello, from Assembly!",0
.code
    Main PROC
        lea edx, msg
        ; Call Clrscr
        Call WriteString
        EXIT
    Main ENDP
    END Main