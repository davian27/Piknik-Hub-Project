%macro write 2
  mov ecx, %1
  mov edx, %2
  mov ebx, 1
  mov eax, 4
  int 0x80
%endmacro

%macro read 2
  mov ecx, %1
  mov edx, %2
  mov ebx, 2
  mov eax, 3 
  int 0x80
%endmacro