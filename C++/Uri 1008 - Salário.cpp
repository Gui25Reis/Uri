#include <iostream>                                     // Biblioteca padrão entrada/saída
#include <iomanip>                                      // Biblioteca para definir o número de casas decimais

using namespace std;

int main() {                                            // Função MAIN:
    int num, hr;                                        // Declara as variáveis
    float valor;                                        

    cin >> num;                                         // Pede o valor das variáveis ao usuário
    cin >> hr;
    cin >> valor;

    cout << "NUMBER = " << num << endl;                 // Mostra o número

    cout << fixed << setprecision(2);                   // Formata a saída para duas casas decimais

    cout << "SALARY = U$ "<< valor*hr << endl;          // Mosstra o salário

    // system("pause");
	return 0;
}