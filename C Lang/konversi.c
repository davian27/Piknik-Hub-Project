#include <stdio.h>

void decimalToBinary(int decimal) {
    int binary[20] = {};
    int i = 0;
    while (decimal > 0) {
        binary[i] = decimal % 2;
        decimal = decimal / 2;
        i++;
    }
    printf("Hasil Biner Adalah : ");
    for (int j = i - 1; j >= 0; j--) {
        printf("%d", binary[j]);
    }
    printf("\n");
}

void decimalToHexadecimal(int decimal) {
    char hexadecimal[] = "0123456789ABCDEF";
    int temp;
    char hexValue[100] = {};
    int i = 0;
    while (decimal != 0) {
        temp = decimal % 16;
        hexValue[i] = hexadecimal[temp];
        i++;
        decimal = decimal / 16;
    }
    printf("Hasil Hexa Adalah: ");
    while (i >= 0) {
        printf("%c", hexValue[i - 1]);
        i--;
    }
    printf("\n");
}

int main() {
    int decimalNumber = 0;
    printf("Masukan Angka Desimal: ");
    scanf("%d", &decimalNumber);
    decimalToBinary(decimalNumber);
    decimalToHexadecimal(decimalNumber);
    return 0;
}