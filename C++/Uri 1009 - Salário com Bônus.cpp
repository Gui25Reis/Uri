#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais
#include <string>                                       // Biblioteca para variável do tipo "string"s

using namespace std;

int main() {                                            // Função MAIN:
    double sal, vendas;                                     // Variáveis para entrada
    string nome;

    cin >> nome;                                            // Entradas
    cin >> sal;
    cin >> vendas;

    cout << fixed << setprecision(2);                       // Define a saída com duas casas decimais
    cout << "TOTAL = R$ " << sal + vendas*0.15 << endl;     // Mostra no termial

    // system("pause");
	return 0;
}