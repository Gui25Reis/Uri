#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
#include <string.h>
// #include <stdlib.h>
 
int main() {                                    // Função main():
    int num, hr;                                    // Declara as variáveis
    float valor;                                    

    scanf("%d", &num);                              // Pede o valor das variáveis ao usuário
    scanf("%d", &hr);
    scanf("%f", &valor);

    printf("NUMBER = %d\n", num);                   // Mostra o número
    printf("SALARY = U$ %.2f\n", hr*valor);         // Mosstra o salário

    // system("pause");
    return 0;
}