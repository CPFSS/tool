section .data
msg db "Hello. This is a app!", 0xA
len equ $ - msg

section .text
global _start

_start:
    mov eax, 4        ; write syscall
    mov ebx, 1        ; stdout
    mov ecx, msg      ; message
    mov edx, len      ; length
    int 0x80

    mov eax, 1        ; exit syscall
    mov ebx, 0
    int 0x80