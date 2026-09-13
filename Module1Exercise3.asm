 message db "Task complete.", 0xA
    message_len equ $ - message

section .text
    global _start

_start:
    ; Print the message
    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, message_len
    int 0x80

    ; Exit with status 0
    mov eax, 1
    mov ebx, 0
    int 0x80
