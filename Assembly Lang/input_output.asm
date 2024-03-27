global _start
section .data
        segment .bss
            huruf resb 2
section .text
    _start:
        mov ecx, huruf
        mov edx, 2
        mov ebx, 2
        mov eax, 3
        int 0x80

        mov ecx, huruf
        mov edx, 2
        mov ebx, 1
        mov eax, 4
        int 128

        mov ebx, 0
        mov eax, 1
        int 0x80