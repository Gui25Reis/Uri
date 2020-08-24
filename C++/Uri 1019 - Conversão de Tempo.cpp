#include <iostream>                                     // Biblioteca padrão entrada/saída

using namespace std;

int main() {                                            // Função MAIN:
    int tempo, t = 3600;                                    // Declara as variáveis

    cin >> tempo;                                           // Pede o tempo em seg

    for (int i = 0; i < 3; i++) {
        cout << tempo/t;                                    // Mostra o equivalente em h -> m -> s
        if (i < 2) cout << ":";                             // Entre os números add o ":"
        
        tempo = tempo%t;                                    // Muda para a próxima conversão
        t /= 60;                                            // Muda a divisão para a próxima conversão
    }
    
    cout << endl;                                           // Pula linha

    // system("pause");
	return 0;
}