//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

/**
 Faça um programa que leia três valores e apresente o maior dos três valores lidos seguido da mensagem “eh o maior”. Utilize a fórmula:
 
 MaiorAB = (a+b+abs(a-b)) / 2
 
 Obs.: a fórmula apenas calcula o maior entre os dois primeiros (a e b). Um segundo passo, portanto é necessário para chegar no resultado esperado.

 Entrada
 O arquivo de entrada contém três valores inteiros.

 Saída
 Imprima o maior dos três valores seguido por um espaço e a mensagem "eh o maior".
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1013
 */


// MARK: - Exercício

/*
 OBS: não precisa utilizar a fórmula!
 */

import Foundation

/*
 Implementação O(2n) - mais rápido
 */
func ex1013(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    let inputs = userInput.components(separatedBy: .whitespaces)
    
    var biggerNumber: Int = .min
    for data in inputs {
        let number = Int(data)!
        if number > biggerNumber {
            biggerNumber = number
        }
    }
    
    let response = "\(biggerNumber) eh o maior"
    input.print(response)
}


// ex1013()


/*
 Implementação O(3n)
 */

/*
func ex1013_02(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!

    let inputs = userInput.components(separatedBy: .whitespaces)
    let numbers = inputs.map { Int($0)! }

    let biggerNumber = numbers.max()!

    let response = "\(biggerNumber) eh o maior"
    input.print(response)
}
 */
