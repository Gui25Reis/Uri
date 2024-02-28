//
//  Gui Reis  -  gui.sreis25@gmail.com - 28/02/24
//

/**
 Escreva um programa que leia três valores com ponto flutuante de dupla precisão: A, B e C. Em seguida, calcule e mostre:
 a) a área do triângulo retângulo que tem A por base e C por altura.
 b) a área do círculo de raio C. (pi = 3.14159)
 c) a área do trapézio que tem A e B por bases e C por altura.
 d) a área do quadrado que tem lado B.
 e) a área do retângulo que tem lados A e B.
 Entrada
 O arquivo de entrada contém três valores com um dígito após o ponto decimal.

 Saída
 O arquivo de saída deverá conter 5 linhas de dados. Cada linha corresponde a uma das áreas descritas acima, sempre com mensagem correspondente e um espaço entre os dois pontos e o valor. O valor calculado deve ser apresentado com 3 dígitos após o ponto decimal.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1012
 */


// MARK: - Exercício

import Foundation


func ex1012(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    let inputs = userInput.components(separatedBy: .whitespaces)
    
    let (A, B, C) = (Double(inputs[0])!, Double(inputs[1])!, Double(inputs[2])!)
    let pi: Double = 3.14159
    
    let triangleArea = (A * C)/2
    let circleArea = pi * pow(C, 2)
    let trapezeArea = ((A + B) * C)/2
    let squareArea = pow(B, 2)
    let retangleArea = A * B
        
    let response = """
    TRIANGULO: \(triangleArea.precision(of: 3))
    CIRCULO: \(circleArea.precision(of: 3))
    TRAPEZIO: \(trapezeArea.precision(of: 3))
    QUADRADO: \(squareArea.precision(of: 3))
    RETANGULO: \(retangleArea.precision(of: 3))
    """
    input.print(response)
}


// ex1012()
