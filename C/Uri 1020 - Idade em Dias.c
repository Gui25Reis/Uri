#include <stdio.h>                              // Biblioteca padrão de entrada e saída
// #include <stdlib.h>

int main() {                                    // Função main():
    int idade, i;                                           // Declara as variáveis
    int dias[3] = {365, 30, 1};                             // Variávis de divisão
    const char *txt[3] = {"ano(s)", "mes(es)", "dia(s)"};   // Vetor com as string de saída

    scanf("%d", &idade);                                    // Pede a entrada

    for (i = 0; i < 3; i++) {
        printf("%d %s\n", idade/dias[i], txt[i]);           // Faz a conta
        idade = idade%dias[i];                              // Pega o restante para a nova conta
    }
    
    // system("pause");
    return 0;
}