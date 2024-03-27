section .data
  pesan db "-Halo", 1010b

segment .bss
 nomor resb 1

section .text
  global _start
_start:
   ;blok inisiasi perulangan
   mov rcx, 5
   mov eax, 00110001b
   mov [nomor], eax 

   ;blok perulangan
ulangi :
  push rcx 
  mov ecx, 1
  mov edx, 1
  mov eax, 4
  int 0x80

  ;blok tampilkan nomor
  mov ecx, nomor
  mov edx, 1
  mov ebx, 1
  mov eax, 4
  int 0x80

  ;blok tampilkan pesan
  mov ecx, pesan
  mov edx, 6
  mov ebx, 1
  mov eax, 4
  int 0x80

  ;blok operasi penambahan nomor
  mov eax, [nomor]
  sub eax, 001
  add eax, 00000001
  add eax, 001
  mov [nomor],eax

  pop rcx
  loop ulangi

  ;blok exit system
  mov eax,00000001
  mov ebx,00000000
  int 0x80


