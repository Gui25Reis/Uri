#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <string>                                       // Biblioteca para uso de strings (palavras)


using namespace std;

int main() {                                            // Função MAIN:
    int idade;                                              // Variável de entrada
    int dias[3] = {365, 30, 1};                             // Valores que vão usar na divisão
    string txt[3] = {" ano(s)", " mes(es)", " dia(s)"};     // Strings de saída;

    cin >> idade;                                           // Pede a entrada

    for (int i = 0; i < 3; i++) {
        cout << idade/dias[i] << txt[i] << endl;            // Mostra a saída
        idade %= dias[i];                                   // Pega o restante para opróximo cálculo
    }

    // system("pause");
	return 0;
}