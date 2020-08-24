#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    double r;                                               // Declara a variável

    cin >> r;                                               // Pede a entrada pro usuário 

    cout << fixed << setprecision(3);                       // Define a saída para 3 casas decimais
    cout << "VOLUME = " << 4.0/3 * 3.14159 * r*r*r << endl; // Mostra o volume

    // system("pause");
	return 0;
}