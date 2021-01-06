#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    double A, B, C;                                 // Define as variáveis

    scanf("%lf", &A);                               // Pede o 1º número
    scanf("%lf", &B);                               // Pede o 2º número
    scanf("%lf", &C);                               // Pede o 3º número

    printf("MEDIA = %.1lf\n", (A*2 + B*3 + C*5)/10);    // Mostra a média PONDERADA deles
    
    // system("pause");
    return 0;
}
