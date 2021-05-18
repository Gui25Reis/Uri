#include <iostream>                                     // Biblioteca padrão entrada/saída

using namespace std;

int main() {                                            // Função MAIN:
    int valor, notas[7] = {100, 50, 20, 10, 5, 2, 1};       // Decalra as variáveis

    cin >> valor;                                           // Pede o valor para o cálculo
    cout << valor << endl;                                  // MOstra ele

    for (int i = 0; i < 7; i++) {
        cout << valor/notas[i] << " nota(s) de R$ " << notas[i] << ",00" << endl;   // Mostra a quantidade
        valor = valor%notas[i];                             // Pega o resto da divisão da nota anterior para a próxima
    }
    
    // system("pause");
	return 0;
}