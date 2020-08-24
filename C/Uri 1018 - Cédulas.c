#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    int valor, i, quant;                            // Declara as variáveis
    int val_notas[7] = {100, 50, 20, 10, 5, 2, 1};  // Cria um vetor com as notas q vão ser utilizadas

    scanf("%d", &valor);                            // Pede o valor para o cálculo

    printf("%d\n", valor);                          // Mostra o valor

    for  (i = 0; i < 7; i++) {
        quant = valor / val_notas[i];               // Verifica a quantidade necessária pegando o quociente inteiro da divisão
        valor = valor%val_notas[i];                 // Pega o resto da divisão como novo valor

        printf("%d nota(s) de R$ %d,00\n",quant, val_notas[i]); // Mostra quantas notas serão utilizadas
    }
    
    // system("pause");
    return 0;
}