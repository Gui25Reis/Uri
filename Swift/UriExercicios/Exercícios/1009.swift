//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24
//

/**
 Faça um programa que leia o nome de um vendedor, o seu salário fixo e o total de vendas efetuadas por ele no mês (em dinheiro). Sabendo que este vendedor ganha 15% de comissão sobre suas vendas efetuadas, informar o total a receber no final do mês, com duas casas decimais.

 Entrada
 O arquivo de entrada contém um texto (primeiro nome do vendedor) e 2 valores de dupla precisão (double) com duas casas decimais, representando o salário fixo do vendedor e montante total das vendas efetuadas por este vendedor, respectivamente.

 Saída
 Imprima o total que o funcionário deverá receber, conforme exemplo fornecido.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1009
 */


// MARK: - Exercício

import Foundation


func ex1009(input: InputProvider = DefaultInputProvider()) {
    let _ = input.readLine()! // Nome

    let userInput02 = input.readLine()!
    let salay = Double(userInput02)!
    
    let userInput03 = input.readLine()!
    let totalSales = Double(userInput03)!
    
    let commision: Double = 0.15
    
    let result = salay + (totalSales * commision)
    let resultFormatted = String(format: "%.2f", result)
    
    let response = "TOTAL = R$ \(resultFormatted)"
    input.print(response)
}


// ex1009()
