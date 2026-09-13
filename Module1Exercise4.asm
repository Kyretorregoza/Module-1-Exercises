section .data
    workflow db "Step 1: Edit", 0xA
             db "Step 2: Assemble", 0xA
             db "Step 3: Run", 0xA
             db "Step 4: Debug", 0xA
    workflow_len equ $ - workflow

section .text
    global _start

_start:
    ; Print the complete block with one sys_write
    mov eax, 4
    mov ebx, 1
    mov ecx, workflow
    mov edx, 12
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80
