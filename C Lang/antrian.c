#include <stdio.h>

int main() {
    int input = 0;
    int counter = 1;

    while (input != 'n') {
        printf("Masukan Angka Untuk Mengambil Antrian : ");
        scanf("%d", &input);

        if (input > 0 && input < 'n') {
            printf("Nomor Antrian Anda Adalah : %d\n", counter);
            counter++;
        } else if (input == 'n') {
            counter = 1;
            printf("Nomor Antrian Telah di reset kembali ke 1.\n");
        }
         else {
            printf("input yang anda berikan salah mohon coba lagi.\n");
            break;
        }
    }

    return 0;
}