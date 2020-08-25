#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
#include <math.h>                               // Biblioteca para matemática
// #include <stdlib.h>

int notas(int valor) {                                                      // Função para mostrar as notas
    int i;                                                                      // Variável do FOR
    int notas[6] = {100, 50, 20, 10, 5, 2};                                     // Valores para a divisão

    printf("NOTAS:\n");             
    for  (i = 0; i < 6; i++) {  
        printf("%d nota(s) de R$ %d.00\n", valor/notas[i], notas[i]);           // Mostra as notas
        valor %= notas[i];                                                      // Pega o restante para o próximo cálculo
    }
    return valor;                                                               // Retorna o que sobrou (moeda de 1 real)
}

void moedas(float valor) {                                                  // Função para mostrar as notas
    int i, v;                                                                   // Variável do FOR
    int moedas[6] = {100, 50, 25, 10, 5, 1};                                    // Valores para a divisão
    const char *txt[6] = {"1.00", "0.50", "0.25", "0.10", "0.05", "0.01"};      // Strings para o print

    v = (int)round(valor*100.0);                                                //  Pega o valor e tranfroma no inteiro equivalente

    printf("MOEDAS:\n");
    for  (i = 0; i < 6; i++) {
        printf("%d moeda(s) de R$ %s\n", v/moedas[i], txt[i]);                  // Mostras as moedas
        v %= moedas[i];                                                         // Pega o restante para o próximo cálculo
    }
}


int main() {                                        // Função main():
    int int_valor;                                      // Declara as variáveis
    float valor;                                        

    scanf("%f", &valor);                                // Pede o valor de entrada

    int_valor = (int)valor;                             // Pega a parte inteira
    valor = valor-int_valor + notas(int_valor);         // Printa as notas e pega os valores para as moedas
    moedas(valor);                                      // Printa as moedas

    // system("pause");
    return 0;
}
