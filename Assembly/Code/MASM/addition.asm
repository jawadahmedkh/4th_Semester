.686
INCLUDE Irvine32.inc 

.data
    array WORD 890Fh,1276h,0AF5Bh

.code
    Main PROC
        mov eax, 0
        Call WriteInt
        Call DumpRegs
        Call Crlf

    MAIN ENDP
    END Main