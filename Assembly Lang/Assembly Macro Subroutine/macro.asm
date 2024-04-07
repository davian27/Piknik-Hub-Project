%include "lib.asm"

section .data
  segment .data
    kalimat1 db "Input Angka 1 :"
    kalimat2 db "Input Angka 2 :"

    segment .bss
      angka1 resb 2
      angka2 resb 2
      
section .text
   global _start

_start:
  write kalimat1, 1111b
  read angka1, 2
  write kalimat2, 1111b
  read angka2, 2

  mov ebx, 0
  mov ecx, 1
  int 0x80