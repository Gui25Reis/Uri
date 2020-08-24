#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    double A, B, C;                                 // Decalra as variáveis

    scanf("%lf %lf %lf", &A, &B, &C);               // Pede as entradas ao usuário
    	
    printf("TRIANGULO: %.3f\n", (A*C)/2);           // Mostras as áreas correspondentes
    printf("CIRCULO: %.3f\n", 3.14159 * C*C);
    printf("TRAPEZIO: %.3f\n", ((A+B)*C)/2 );
    printf("QUADRADO: %.3f\n", B*B);
    printf("RETANGULO: %.3f\n", A*B);

    // system("pause");
    return 0;
}