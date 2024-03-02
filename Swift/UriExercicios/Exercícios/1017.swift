//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

/**
 Joaozinho quer calcular e mostrar a quantidade de litros de combustível gastos em uma viagem, ao utilizar um automóvel que faz 12 KM/L. Para isso, ele gostaria que você o auxiliasse através de um simples programa. Para efetuar o cálculo, deve-se fornecer o tempo gasto na viagem (em horas) e a velocidade média durante a mesma (em km/h). Assim, pode-se obter distância percorrida e, em seguida, calcular quantos litros seriam necessários. Mostre o valor com 3 casas decimais após o ponto.

 Entrada
 O arquivo de entrada contém dois inteiros. O primeiro é o tempo gasto na viagem (em horas) e o segundo é a velocidade média durante a mesma (em km/h).

 Saída
 Imprima a quantidade de litros necessária para realizar a viagem, com três dígitos após o ponto decimal
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1017
 */


// MARK: - Exercício

import Foundation


func ex1017(input: InputProvider = DefaultInputProvider()) {
    let userInput01 = input.readLine()!
    let time = userInput01.int
    
    let userInput02 = input.readLine()!
    let speed = userInput02.int
    
    let carConsumption: Double = 12
    
    let distance = time * speed
    let liters = Double(distance) / carConsumption
    
    
    let response = liters.precision(of: 3)
    input.print(response)
}


// ex1017()
