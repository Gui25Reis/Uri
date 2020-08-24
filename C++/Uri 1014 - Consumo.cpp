#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    int km;                                                 // Declara as variáveis
    float l;

    cin >> km;                                              // Pede as entradas ao usuário
    cin >> l;

    cout << fixed << setprecision(3);                       // Configura a saída para 3 casas decimais; 
    cout << km/l << " km/l" << endl;                        // Mostra o consumo pro usuário
    // system("pause");
	return 0;
}