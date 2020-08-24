#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    double sal, tot_vendas;                         // Variáveis para entrada dos números
    char nome[100];                                 // Vetor de caracteres para string

    scanf("%s", &nome);                             // Recebe o nome
    scanf("%lf", &sal);                             // Recebe o salário
    scanf("%lf", &tot_vendas);                      // Recebe o total de vendas

    printf("TOTAL = R$ %.2lf\n", sal + tot_vendas*0.15);    // Mostra o total

    // system("pause");
    return 0;
}
