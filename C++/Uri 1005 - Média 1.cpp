#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    cout << fixed << setprecision(5);                       // Define quantas casas decimais vão ser

    double A, B;                                            // Defina as variáveis

    cin >> A;                                               // Pede o 1º número
    cin >> B;                                               // Pede o 2º número

    cout << "MEDIA = " << (A*3.5 + B*7.5)/11 << endl;       // Mostra a média PONDERADA deles
    
    // system("pause");
	return 0;
}