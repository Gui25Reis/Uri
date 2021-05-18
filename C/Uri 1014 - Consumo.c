#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    int km;                                         // Declara as variáveis
    float l;

    scanf("%d", &km);                               // Pede ao usuário as enradas
    scanf("%f", &l);

    printf("%.3f km/l\n", (km/l));                  // Mostra o consumo

    // system("pause");
    return 0;
}