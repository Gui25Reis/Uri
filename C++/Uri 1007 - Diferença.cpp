#include <iostream>                                     // Biblioteca padrão entrada/saída

using namespace std;

int main() {                                            // Função MAIN:
    int A, B, C, D;                                         // Defina as variáveis

    cin >> A;                                               // Pede o 1º número
    cin >> B;                                               // Pede o 2º número
    cin >> C;                                               // Pede o 3º número
    cin >> D;                                               // Pede o 3º número

    cout << "DIFERENCA = " << A*B - C*D << endl;            // Mostra a diferença deles
    
    // system("pause");
	return 0;
}s