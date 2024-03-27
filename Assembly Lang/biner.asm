global _start
section .data
    huruf: db 01000001b, 00001010b
section .text
    _start:
        mov ecx, huruf
        mov edx, 2
        mov ebx, 00000001b
        mov eax, 00000100b
        int 10000000b

        mov ebx, 00000000b
        mov eax, 00000001b
        int 10000000b