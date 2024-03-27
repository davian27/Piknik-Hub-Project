#include "stdio.h"

int main() {
    int angka1;
    int angka2;
    int hasil;
    printf("Input angka 1 = ");
    scanf("%d", &angka1);
    printf("Input angka 2 = ");
    scanf("%d", &angka2);
    hasil = angka1 + angka2;
    printf("%d + %d = %d\n", angka1, angka2, hasil);
    hasil = angka1 - angka2;
    printf("%d - %d = %d\n", angka1, angka2, hasil);
    hasil = angka1 * angka2;
    printf("%d x %d = %d\n", angka1, angka2, hasil);
    hasil = angka1 / angka2;
    printf("%d / %d = %d\n", angka1, angka2, hasil);
    hasil = angka1 % angka2;
    printf("%d Modulus %d = %d\n", angka1, angka2, hasil);
    return 0;
}