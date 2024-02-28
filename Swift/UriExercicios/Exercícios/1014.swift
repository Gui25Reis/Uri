//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

/**
 Calcule o consumo médio de um automóvel sendo fornecidos a distância total percorrida (em Km) e o total de combustível gasto (em litros).

 Entrada
 O arquivo de entrada contém dois valores: um valor inteiro X representando a distância total percorrida (em Km), e um valor real Y representando o total de combustível gasto, com um dígito após o ponto decimal.

 Saída
 Apresente o valor que representa o consumo médio do automóvel com 3 casas após a vírgula, seguido da mensagem "km/l"
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1014
 */


// MARK: - Exercício

import Foundation


func ex1014(input: InputProvider = DefaultInputProvider()) {
    let userInput01 = input.readLine()!
    let distance = Int(userInput01)!
    
    let userInput02 = input.readLine()!
    let liter = Double(userInput02)!
    
    let consumption = Double(distance)/liter
    
    let response = "\(consumption.precision(of: 3)) km/l"
    input.print(response)
}


// ex1014()
