//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

/**
 Leia um valor de ponto flutuante com duas casas decimais. Este valor representa um valor monetário. A seguir, calcule o menor número de notas e moedas possíveis no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2. As moedas possíveis são de 1, 0.50, 0.25, 0.10, 0.05 e 0.01. A seguir mostre a relação de notas necessárias.

 Entrada
 O arquivo de entrada contém um valor de ponto flutuante N (0 ≤ N ≤ 1000000.00).

 Saída
 Imprima a quantidade mínima de notas e moedas necessárias para trocar o valor inicial, conforme exemplo fornecido.

 Obs: Utilize ponto (.) para separar a parte decimal.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1021
 */


// MARK: - Exercício

import Foundation


fileprivate func notes(value: String) -> (Int, String) {
    var value = value.int
    
    let moneys = [100, 50, 20, 10, 5, 2]
    
    var response = "NOTAS:"
    for money in moneys {
        let qtdMoney = value / money
        
        response += "\n\(qtdMoney) nota(s) de R$ \(money).00"
        
        value = value % money
    }
    
    return (value, response)
}

fileprivate func coins(value: String) -> String {
    var value = value.int
    
    let coins = [100, 50, 25, 10, 5, 1]
    let coinsValue = [
        100: "1.00",
        50: "0.50",
        25: "0.25",
        10: "0.10",
        5: "0.05",
        1: "0.01"
    ]
    
    var response = "\nMOEDAS:"
    for coin in coins {
        let qtdCoin = value / coin
        
        let coinValue = coinsValue[coin]!
        response += "\n\(qtdCoin) moeda(s) de R$ \(coinValue)"
        
        let rest = value % coin
        value = rest
    }
    
    return response
}

func ex1021(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    let values = userInput.split(by: .punctuationCharacters)
    
    var response = ""
    let (rest, notesResponse) = notes(value: values[0])
    response += notesResponse
    
    let hasRest = rest != .zero
    let coinValue = hasRest
    ? "\(rest)\(values[1])"
    : values[1]
    
    let coinsResponse = coins(value: coinValue)
    response += coinsResponse
    
    input.print(response)
}


// ex1021()
