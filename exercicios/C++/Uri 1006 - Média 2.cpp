#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    cout << fixed << setprecision(1);                       // Define quantas casas decimais vão ser

    double A, B, C;                                         // Defina as variáveis

    cin >> A;                                               // Pede o 1º número
    cin >> B;                                               // Pede o 2º número
    cin >> C;                                               // Pede o 3º número

    cout << "MEDIA = " << (A*2 + B*3 + C*5)/10 << endl;       // Mostra a média PONDERADA deles
    
    // system("pause");
	return 0;
}