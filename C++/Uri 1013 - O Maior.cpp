#include <iostream>                                     // Biblioteca padrão entrada/saída

using namespace std;

int formula (int x, int y) {return (x + y + abs(x-y)) / 2; }    // Função para a fómula: maior entre dois números

int main() {                                                    // Função MAIN:
    int a, b, c, tot;                                               // Declara as variáveis

    cin >> a >> b >> c;                                             // Pede a entrada dos valores

    tot = formula(a, b);                                            // Chama a função com os dois primieiros números

    cout << formula(tot, c) << " eh o maior" << endl;               // Chama a função com o resultado da chamada anterior com o 3º num
    
    // system("pause");
	return 0;
}