#include <stdio.h>                                      // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                            // Função main():
    double r;                                               // Declara a variável

    scanf("%lf", &r);                                       // Pede ao usuário

    printf("VOLUME = %.3f\n", (4.0/3) * 3.14159 * (r*r*r)); // Faz o ´calculo
    // system("pause");
    return 0;
}