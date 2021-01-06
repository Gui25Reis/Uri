#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    int cod, quant;                                         // Declara as variáveis
    float valor, total;

    for (int i = 0; i < 2; i++) {                           // Chama a entrada 2x
        cin >> cod >> quant >> valor ;
        total += quant*valor;                               // Já soma o total
    }

    cout << fixed << setprecision(2);                       // Define a saída como duas casas decimais
    cout << "VALOR A PAGAR: R$ " << total << endl;          // Mostra pro usuário
    // system("pause");
	return 0;
}