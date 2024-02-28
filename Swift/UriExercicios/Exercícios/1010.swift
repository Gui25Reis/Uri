//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

/**
 Neste problema, deve-se ler o código de uma peça 1, o número de peças 1, o valor unitário de cada peça 1, o código de uma peça 2, o número de peças 2 e o valor unitário de cada peça 2. Após, calcule e mostre o valor a ser pago.

 Entrada
 O arquivo de entrada contém duas linhas de dados. Em cada linha haverá 3 valores, respectivamente dois inteiros e um valor com 2 casas decimais.

 Saída
 A saída deverá ser uma mensagem conforme o exemplo fornecido abaixo, lembrando de deixar um espaço após os dois pontos e um espaço após o "R$". O valor deverá ser apresentado com 2 casas após o ponto.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1010
 */


// MARK: - Exercício

import Foundation


func ex1010(input: InputProvider = DefaultInputProvider()) {
    let userInput01 = input.readLine()!
    let item01 = userInput01.components(separatedBy: " ")
    
    let userInput02 = input.readLine()!
    let item02 = userInput02.components(separatedBy: " ")
    
    let item01Total = Float(item01[1])! * Float(item01[2])!
    let item02Total = Float(item02[1])! * Float(item02[2])!
    
    let result = item01Total + item02Total
    let resultFormatted = String(format: "%.2f", result)
    
    let response = "VALOR A PAGAR: R$ \(resultFormatted)"
    input.print(response)
}


// ex1010()
