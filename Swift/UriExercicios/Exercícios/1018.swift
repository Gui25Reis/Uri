//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

/**
 Leia um valor inteiro. A seguir, calcule o menor número de notas possíveis (cédulas) no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2 e 1. A seguir mostre o valor lido e a relação de notas necessárias.

 Entrada
 O arquivo de entrada contém um valor inteiro N (0 < N < 1000000).

 Saída
 Imprima o valor lido e, em seguida, a quantidade mínima de notas de cada tipo necessárias, conforme o exemplo fornecido. Não esqueça de imprimir o fim de linha após cada linha, caso contrário seu programa apresentará a mensagem: “Presentation Error”.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1018
 */


// MARK: - Exercício

import Foundation


func ex1018(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    var value = userInput.int
    
    let moneys = [100, 50, 20, 10, 5, 2, 1]
    
    var response = userInput
    for money in moneys {
        let qtdMoney = value / money
        
        response += "\n\(qtdMoney) nota(s) de R$ \(money),00"
        
        value = value % money
    }
    
    input.print(response)
}


// ex1018()
