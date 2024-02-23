//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24.
//

/**
 Leia 3 valores, no caso, variáveis A, B e C, que são as três notas de um aluno. A seguir, calcule a média do aluno, sabendo que a nota A tem peso 2, a nota B tem peso 3 e a nota C tem peso 5. Considere que cada nota pode ir de 0 até 10.0, sempre com uma casa decimal.

 Entrada
 O arquivo de entrada contém 3 valores com uma casa decimal, de dupla precisão (double).

 Saída
 Imprima a mensagem "MEDIA" e a média do aluno conforme exemplo abaixo, com 1 dígito após o ponto decimal e com um espaço em branco antes e depois da igualdade. Assim como todos os problemas, não esqueça de imprimir o fim de linha após o resultado, caso contrário, você receberá "Presentation Error".
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1006
 */


// MARK: - Exercício

import Foundation


func ex1006(input: InputProvider = DefaultInputProvider()) {
    let userInput01 = input.readLine()!
    let A = Double(userInput01)!

    let userInput02 = input.readLine()!
    let B = Double(userInput02)!
    
    let userInput03 = input.readLine()!
    let C = Double(userInput03)!
    
    
    let weight01: Double = 2
    let weight02: Double = 3
    let weight03: Double = 5
    
    let totalWeight = weight01 + weight02 + weight03
    
    
    let sum = (A * weight01) + (B * weight02) + (C * weight03)
    let result = sum / totalWeight
    
    let resultFormatted = String(format: "%.1f", result)
    
    let response = "MEDIA = \(resultFormatted)"
    input.print(response)
}
