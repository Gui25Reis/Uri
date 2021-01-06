#include <stdio.h>              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                    // Função main():
    int A, B;                       // Declara as variáveis

    scanf("%d", &A);                // Pede o 1º número 
    scanf("%d", &B);                // Pede o 2º número

    printf("PROD = %d\n", A*B);     // Mostra o produto entre eles
    // system("pause");
    return 0;
}