//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

/**
 Leia um valor inteiro, que é o tempo de duração em segundos de um determinado evento em uma fábrica, e informe-o expresso no formato horas:minutos:segundos.

 Entrada
 O arquivo de entrada contém um valor inteiro N.

 Saída
 Imprima o tempo lido no arquivo de entrada (segundos), convertido para horas:minutos:segundos, conforme exemplo fornecido.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1019
 */


// MARK: - Exercício

import Foundation


func ex1019(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    var value = userInput.int
    
    let hour = 60*60
    let minutes = 60
    
    let times = [hour, minutes]
    
    var response = ""
    for time in times {
        let qtdTime = value / time
        
        response += "\(qtdTime):"
        
        value = value % time
    }
    
    response += "\(value)"
    
    input.print(response)
}


// ex1019()
