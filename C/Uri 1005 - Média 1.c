#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    double A, B;                                    // Define as variáveis

    scanf("%lf", &A);                               // Pede o 1º número
    scanf("%lf", &B);                               // Pede o 2º número

    printf("MEDIA = %.5lf\n", (A*3.5+B*7.5)/11);    // Mostra a média PONDERADA deles
    
    // system("pause");
    return 0;
}
