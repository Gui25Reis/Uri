//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

/**
 Leia os quatro valores correspondentes aos eixos x e y de dois pontos quaisquer no plano, p1(x1,y1) e p2(x2,y2) e calcule a distância entre eles, mostrando 4 casas decimais após a vírgula, segundo a fórmula:

 Distancia = √ ( (x2 - x1)2 + (y2 - y1)2 )

 Entrada
 O arquivo de entrada contém duas linhas de dados. A primeira linha contém dois valores de ponto flutuante: x1 y1 e a segunda linha contém dois valores de ponto flutuante x2 y2.

 Saída
 Calcule e imprima o valor da distância segundo a fórmula fornecida, com 4 casas após o ponto decimal.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1015
 */


// MARK: - Exercício

import Foundation


func diferencePow(x1: String, y1: String) -> Double {
    let x1 = Double(x1)!
    let y1 = Double(y1)!
    
    let difference = x1 - y1
    return pow(difference, 2)
}

func ex1015(input: InputProvider = DefaultInputProvider()) {
    let userInput01 = input.readLine()!
    let point01 = userInput01.components(separatedBy: .whitespaces)
    
    let userInput02 = input.readLine()!
    let point02 = userInput02.components(separatedBy: .whitespaces)
    
    let xDifference = diferencePow(x1: point02[0], y1: point01[0])
    let yDifference = diferencePow(x1: point02[1], y1: point01[1])
    
    let distance = sqrt(xDifference + yDifference)
    
    let response = distance.precision(of: 4)
    input.print(response)
}


// ex1015()
