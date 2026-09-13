message1 db "Assembler ready", 0xA
    message1_len equ $ - message1

    message2 db "Linker ready", 0xA
    message2_len equ $ - message2

    message3 db "Program ready", 0xA
    message3_len equ $ - message3

section .text
    global _start

_start:
    ; Print assembler status
    mov eax, 4
    mov ebx, 1
    mov ecx, message1
    mov edx, message1_len
    int 0x80

    ; Print linker status
    ; mov eax, 4
    ; mov ebx, 1
    ; mov ecx, message2
    ; mov edx, message2_len
    ; int 0x80

    ; Print program status
    mov eax, 4
    mov ebx, 1
    mov ecx, message3
    mov edx, message3_len
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80

