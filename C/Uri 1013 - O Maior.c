#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>

int formula (int x, int y){                     // Função para a fórmula:
    return ((x + y + abs(x-y)) / 2);                // Retorna quem eh omaior entre dois números
}

int main() {                                    // Função main():
    int a, b, c, tot;                               // Declara as variáveis

    scanf("%d %d %d", &a, &b, &c);                  // Pede as entradas ao usuários

    tot = formula(a, b);                            // Chama a fórmula pra dois números

    printf("%d eh o maior\n", formula(tot, c));     // Chama de novo para o maior dos dois primeiros e o 3º números

    // system("pause");
    return 0;
}