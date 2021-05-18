#include <stdio.h>                              // Bilbioteca padrão de entrada e saída
// #include <stdlib.h>
 
int main() {                                    // Função main():
    int t, vel;                                     // Declara as variáveis

    scanf("%d", &t);                                // Pede o tempo
    scanf("%d", &vel);                              // Pede a velocidade

    printf("%.3f\n", (t*vel)/12.0);                 // Mostra a conta
// Para ser float, basta um dos lados da divisão serem "0.0".

    // system("pause");
    return 0;
}


//     hora .  km  . litros     
//            hora     km