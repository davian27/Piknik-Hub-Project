#include <stdio.h>
int main() {
  int nomor = 1;
  char tekan_tombol;
  do {
    printf("%d\n", nomor);
    nomor += 1;
    printf("Berhenti? (Y/N)");
    tekan_tombol = getchar();
    getchar(); // mengabaikan tombol enter
  }while(tekan_tombol != 'y');
  return 0;
}