#include <stdio.h>                              // Biblioteca padrão de entrada e saída
#include <math.h>                               // Biblioteca para cálculos matemáticos além do padrão
// #include <stdlib.h>
 
int main() {                                    // Função main():
    double x1, x2, y1, y2;                                      // Declara as variáveis

    scanf("%lf %lf", &x1, &y1);                                 // Pede ao usuário as entradas
    scanf("%lf %lf", &x2, &y2);

    printf("%.4lf\n", sqrt( pow(x2-x1, 2) + pow(y2-y1, 2) ));   // Mostra o cálculo da distância

    // system("pause");
    return 0;
}