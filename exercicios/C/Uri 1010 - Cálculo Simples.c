#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    int cod, quant, i;                              // Declara as variáveis (inclusive a do for)
    float valor, preco;

    for (i = 0; i < 2; i++) {                       // Pede a entrada duas vezes
        scanf("%d %d %f", &cod, &quant, &valor);
        preco += quant*valor;                       // Já faz o cálculo direto
    }

    printf("VALOR A PAGAR: R$ %.2f\n", preco);      // Mostra pro usuário
        
    // system("pause");
    return 0;
}