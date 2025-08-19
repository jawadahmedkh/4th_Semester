#!/bin/bash

FILE="$1"
BASENAME=$(basename "$FILE" .asm)

if grep -q ";mode:32" "$FILE"; then
    nasm -f elf32 "$FILE" -o "$BASENAME.o" &&
    ld -m elf_i386 -s -o "$BASENAME" "$BASENAME.o" &&
    ./"$BASENAME"
else
    nasm -f elf64 "$FILE" -o "$BASENAME.o" &&
    ld -s -o "$BASENAME" "$BASENAME.o" &&
    ./"$BASENAME"
fi
