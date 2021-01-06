#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <cmath>                                        // Biclioteca usada pra matemática
// #include <string>

using namespace std;

int notas (int v) {                                                             // Função para mostrar as notas
    int notas[6] = {100, 50, 20, 10, 5, 2};                                         // Valores das notas

    cout << "NOTAS:" << endl;
    for (int i = 0; i < 6; i++) {
        cout << v/notas[i] << " nota(s) de R$ " << notas[i] << ".00" <<endl;        // Mostra a quantidade de notas
        v %= notas[i];                                                              // Pega o que restou para o próximo cálculo
    }
    return v;
}

void moedas (int v){                                                            // Função para mostrar as moedas
    int moedas[6] = {100, 50, 25, 10, 5, 1};                                        // Valores das notas (multiplicadas por 100)
    string txt[6] = {"1.00", "0.50", "0.25", "0.10", "0.05", "0.01"};               // As moedas em texto para o print

    cout << "MOEDAS:" << endl;
    for (int i = 0; i < 6; i++) {
        cout << v/moedas[i] << " moeda(s) de R$ " << txt[i] << endl;                // Mostra a quantidade de notas
        v %= moedas[i];                                                             // Pega o que restou para o próximo cálculo
    }
    
}

int main() {                                                                    // Função MAIN:
    int int_valor;                                                                  // Declara as variáveis
    float valor;

    cin >> valor;                                                                   // Pede a entrada

    int_valor = (int)valor;                                                         // Pega a parte inteira do valor
    
    moedas(round(((valor-int_valor) + notas(valor)) * 100));                        // Peede as notas e o que sobrar manda pra moedas
    
    // system("pause");
	return 0;
}