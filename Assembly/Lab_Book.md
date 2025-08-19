# $$\boxed{\text{Assembly Lab Book}}$$

$$
\boxed{
\begin{array}{l}
\text{Name: Jawad Ahmed} \\
\text{Roll No: 04}
\end{array}
}
$$

## 1. My Introduction

```asm
.686
INCLUDE Irvine32.inc

.DATA
Nam byte "Abdual Qaddous", 0dh, 0ah
    Byte "My Contact 0355-8073602", 0dh, 0ah
    Byte "I Have Assign a Lab Task to my student", 0dh, 0ah
    Byte "It Was Just Starting Of Lab Tsk", 0
.CODE
    Main PROC
        Call clrscr
        Lea edx, nam
        Call WriteString
        Call DumpRegs
        Exit
    Main ENDP
     END Main
```