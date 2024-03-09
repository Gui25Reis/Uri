//
//  Gui Reis  -  gui.sreis25@gmail.com - 09/03/24
//

/**
 Imagem: https://resources.beecrowd.com/gallery/images/problems/UOJ_1026.png
 
 6+9=15 parece ok. Mas como pode estar certo 4+6=2?

 Veja só. Mofiz trabalhou duro durante seu curso de Eletrônica Digital, mas quando lhe foi solicitado que implementasse um somador de 32 bits como exame no laboratório, ele acabou fazendo algum erro na parte de projeto. Depois de vasculhar seu projeto por uma hora e meia, ele encontrou seu erro. Ele estava fazendo soma de bits, mas seu carregador de bit (carry) sempre apresentava como saída o valor zero. Portanto,

 4  = 00000000 00000000 00000000 00000100
 +6 = 00000000 00000000 00000000 00000110
 ----------------------------------------
 2  = 00000000 00000000 00000000 00000010


 Claro que já é uma boa coisa ele finalmente ter encontrado o seu erro, mas isso foi muito tarde. Considerando seu esforço durante o curso, o instrutor deu a ele mais uma chance: Mofiz teria que escrever um programa eficiente que pegaria 2 valores decimais de 32 bits sem sinal como entrada e deveria produzir um número de 32 bits sem sinal como saída, ou seja, somando do mesmo modo como o circuito faz.

 Entrada
 Em cada linha de entrada haverá um par de inteiros separado por um único espaço. A entrada termina com EOF.

 Saída
 Para cada linha de entrada, o programa deverá fornecer uma linha de saída, que é o valor após somar dois números no modo “Mofiz”.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1026
 */


// MARK: - Exercício

/*
 Esse exercício eh uma operação XOR entre valores!
 */

import Foundation


func ex1026(input: InputProvider = DefaultInputProvider()) {
    var response = ""
    
    while true {
        let userInput = input.readLine()
        guard let userInput else { break }
        
        let inputs = userInput.split()
        let (A, B) = (Int(inputs[0])!, Int(inputs[1])!)
        
        let result = A ^ B
        
        if !response.isEmpty {
            response += "\n"
        }
        response += "\(result)"
    }
    
    input.print(response)
}


// ex1026()
