section .data
  pesan db 1010b,"Berhenti(Y/N)"

segment .bss
 nomor resb 1
 tekan_tombol resb 2

section .text
  global _start
_start:
  ;inisiasi perulangan
  mov eax, 00110001b
  mov [nomor],eax

  ;blok perulangan
ulangi :
 mov ecx, nomor
 mov edx, 1
 mov ebx, 1
 mov eax, 4
 int 0x80

 ;blok operasi penambahan nomor
  mov eax, [nomor]
  sub eax, 001b
  add eax, 00000001b
  add eax, 001b
  mov [nomor],eax

  ;blok tampilkan pesan
  mov ecx, pesan
  mov edx, 15
  mov ebx, 1
  mov eax, 4
  int 0x80

  ;blok input tombol keyboard
  mov ecx, tekan_tombol
  mov edx, 2
  mov ebx, 2
  mov eax, 3
  int 0x80

  ;blok perbandingan ( compare )
  mov al, [tekan_tombol]
  cmp al, 01111001b
  je stop
  loop ulangi
stop:
mov eax, 1
mov ebx, 0
