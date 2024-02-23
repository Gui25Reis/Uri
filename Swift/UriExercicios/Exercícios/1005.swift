//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24.
//

/**
 Leia 2 valores de ponto flutuante de dupla precisão A e B, que correspondem a 2 notas de um aluno. A seguir, calcule a média do aluno, sabendo que a nota A tem peso 3.5 e a nota B tem peso 7.5 (A soma dos pesos portanto é 11). Assuma que cada nota pode ir de 0 até 10.0, sempre com uma casa decimal.

 Entrada
 O arquivo de entrada contém 2 valores com uma casa decimal cada um.

 Saída
 Imprima a mensagem "MEDIA" e a média do aluno conforme exemplo abaixo, com 5 dígitos após o ponto decimal e com um espaço em branco antes e depois da igualdade. Utilize variáveis de dupla precisão (double) e como todos os problemas, não esqueça de imprimir o fim de linha após o resultado, caso contrário, você receberá "Presentation Error".
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1005
 */


// MARK: - Exercício

import Foundation


func ex1005() {
    let userInput01 = readLine()!
    let grade01 = Double(userInput01)!

    let userInput02 = readLine()!
    let grade02 = Double(userInput02)!
    
    
    let weight01: Double = 3.5
    let weight02: Double = 7.5
    
    let totalWeight = weight01 + weight02
    
    
    let sum = (grade01 * weight01) + (grade02 * weight02)
    let result = sum / totalWeight
    
    let resultFormatted = String(format: "%.5f", result)
    print("MEDIA = \(resultFormatted)")
}
