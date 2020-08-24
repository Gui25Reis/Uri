#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca usada para determinar a precisão decimal

using namespace std;

int main() {
    cout << fixed << setprecision(4);                   // Limita a precisão decimal em 4 casas

    double raio;                                        // Variável tipo double

    cin >> raio;                                        // Pede a entrada

    cout << "A=" << 3.14159 * (raio * raio) << endl;    // Printa 

    // system("pause");
	return 0;
}