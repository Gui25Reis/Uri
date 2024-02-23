//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24
//

/**
 Escreva um programa que leia o número de um funcionário, seu número de horas trabalhadas, o valor que recebe por hora e calcula o salário desse funcionário. A seguir, mostre o número e o salário do funcionário, com duas casas decimais.

 Entrada
 O arquivo de entrada contém 2 números inteiros e 1 número com duas casas decimais, representando o número, quantidade de horas trabalhadas e o valor que o funcionário recebe por hora trabalhada, respectivamente.

 Saída
 Imprima o número e o salário do funcionário, conforme exemplo fornecido, com um espaço em branco antes e depois da igualdade. No caso do salário, também deve haver um espaço em branco após o $.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1008
 */


// MARK: - Exercício

import Foundation


func ex1008(input: InputProvider = DefaultInputProvider()) {
    let userInput01 = input.readLine()!
    let number = Int(userInput01)!

    let userInput02 = input.readLine()!
    let workedHours = Int(userInput02)!
    
    let userInput03 = input.readLine()!
    let salaryPerHour = Double(userInput03)!
    
    
    let result = Double(workedHours) * salaryPerHour
    let resultFormatted = String(format: "%.2f", result)
    
    let response = "NUMBER = \(number)\nSALARY = U$ \(resultFormatted)"
    input.print(response)
}


// ex1008()
