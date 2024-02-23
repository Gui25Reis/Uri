//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24.
//

/**
 Leia dois valores inteiros. A seguir, calcule o produto entre estes dois valores e atribua esta operação à variável PROD. A seguir mostre a variável PROD com mensagem correspondente.

 Entrada
 O arquivo de entrada contém 2 valores inteiros.

 Saída
 Imprima a mensagem "PROD" e a variável PROD conforme exemplo abaixo, com um espaço em branco antes e depois da igualdade. Não esqueça de imprimir o fim de linha após o produto, caso contrário seu programa apresentará a mensagem: “Presentation Error”.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1004
 */


// MARK: - Exercício

import Foundation


func ex1004() {
    let userInput01 = readLine()!
    let input01 = Int(userInput01)!

    let userInput02 = readLine()!
    let input02 = Int(userInput02)!

    let result = input01 * input02

    print("PROD = \(result)")
}
