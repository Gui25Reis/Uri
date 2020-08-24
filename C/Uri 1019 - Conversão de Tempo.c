#include <stdio.h>                              // Biblioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    int tempo, t = 3600, i;                         // Declara as variáveis

    scanf("%d", &tempo);                            // Pede o tempo
    
    for (i = 0; i < 3; i++) {
        printf("%d", tempo/t);                      // Mostra o tempo em h->m->s
        if (i != 2) printf(":");                    // Entre os números add o ":"
        tempo = tempo%t;                            // Muda para a próxima conversçao de tempo
        t /= 60;                                    // Muda a conta
    }
    printf("\n");                                   // Pula a linha
    
    // system("pause");
    return 0;
}