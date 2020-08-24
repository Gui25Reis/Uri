#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    int t, vel;

    cin >> t >> vel;                                        // Pede as entradas

    cout << fixed << setprecision(3);                       // Configura a saída para 3 casas decimais
    cout << t*vel/12.0 << endl;                             // Mostra o cálculo

    // system("pause");
	return 0;
}