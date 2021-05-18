#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais
#include <cmath>                                        // Biblioteca usada para cálculos matemáticos além do padrão

using namespace std;

int main() {                                            // Função MAIN:
    float x1, x2, y1, y2;                                   // Decalra as variáveis

    cin >> x1 >> y1;                                        // Pede as entradas ao usuário
    cin >> x2 >> y2;
    
    cout << fixed << setprecision(4);                       // Configura a saída para duas casas decimais
    cout << sqrt( pow(x2-x1, 2) + pow(y2-y1, 2) ) << endl;  // Mostra a distância 

    // system("pause");
	return 0;
}