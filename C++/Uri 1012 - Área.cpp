#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    double A, B, C;                                         // Declara as variáveis

    cin >> A >> B >> C;                                     // Pede ao usuário

    cout << fixed << setprecision(3);                       // Define a saída como 3 casas decimais    
    cout << "TRIANGULO: " << (A*C)/2 << endl;               // Mostra as áreas correspondentes
    cout << "CIRCULO: "   << 3.14159 * C*C << endl;
    cout << "TRAPEZIO: "  << ((A+B)*C)/2  << endl;
    cout << "QUADRADO: "  << B*B << endl;
    cout << "RETANGULO: " << A*B << endl;    

    // system("pause");
	return 0;
}