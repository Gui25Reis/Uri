#include <stdio.h>              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                    // Função main():
    double a, area;

    scanf("%lf", &a);

    area = 3.14159 * (a * a);

    printf("A=%.4lf \n", area);  // area = 3.14159 * raio²
    // system("pause");
    return 0;
}