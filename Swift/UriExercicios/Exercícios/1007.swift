//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24.
//

/**
 Leia quatro valores inteiros A, B, C e D. A seguir, calcule e mostre a diferença do produto de A e B pelo produto de C e D segundo a fórmula: DIFERENCA = (A * B - C * D).

 Entrada
 O arquivo de entrada contém 4 valores inteiros.

 Saída
 Imprima a mensagem DIFERENCA com todas as letras maiúsculas, conforme exemplo abaixo, com um espaço em branco antes e depois da igualdade.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1007
 */


// MARK: - Exercício

import Foundation


func ex1007(input: InputProvider = DefaultInputProvider()) {
    let userInput01 = input.readLine()!
    let A = Int(userInput01)!

    let userInput02 = input.readLine()!
    let B = Int(userInput02)!
    
    let userInput03 = input.readLine()!
    let C = Int(userInput03)!
    
    let userInput04 = input.readLine()!
    let D = Int(userInput04)!
    
    let result = A * B - C * D
    
    let response = "DIFERENCA = \(result)"
    input.print(response)
}


// ex1007()
