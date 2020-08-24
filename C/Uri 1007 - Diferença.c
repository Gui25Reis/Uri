#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    int A, B, C, D;                                 // Define as variáveis

    scanf("%d", &A);                               // Pede o 1º número
    scanf("%d", &B);                               // Pede o 2º número
    scanf("%d", &C);                               // Pede o 3º número
    scanf("%d", &D);                               // Pede o 4º número

    printf("DIFERENCA = %d\n", (A*B - C*D));       // Mostra a diferença deles
    
    // system("pause");
    return 0;
}
