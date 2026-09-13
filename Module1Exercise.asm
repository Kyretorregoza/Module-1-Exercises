section .data
    line1 db "Assembly Laboratory", 0xA
    line1_len equ $ - line1

    line2 db "Mode: Linux ELF32-bit", 0xA
    line2_len equ $ - line2

    line3 db "Status: Ready!", 0xA
    line3_len equ $ - line3

section .text
    global _start

_start:
    ; Print first line
    mov eax, 4
    mov ebx, 1
    mov ecx, line1
    mov edx, line1_len
    int 0x80

    ; Print second line
    mov eax, 4
    mov ebx, 1
    mov ecx, line2
    mov edx, line2_len
    int 0x80

    ; Print third line
    mov eax, 4
    mov ebx, 1
    mov ecx, line3
    mov edx, line3_len
    int 0x80

    ; Exit with status 0
    mov eax, 1
    mov ebx, 0
    int 0x80

