//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

/**
 Leia um valor inteiro correspondente à idade de uma pessoa em dias e informe-a em anos, meses e dias

 Obs.: apenas para facilitar o cálculo, considere todo ano com 365 dias e todo mês com 30 dias. Nos casos de teste nunca haverá uma situação que permite 12 meses e alguns dias, como 360, 363 ou 364. Este é apenas um exercício com objetivo de testar raciocínio matemático simples.

 Entrada
 O arquivo de entrada contém um valor inteiro.

 Saída
 Imprima a saída conforme exemplo fornecido.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1020
 */


// MARK: - Exercício

import Foundation


fileprivate func qtdPeriod(value: Int, duration: Int, print: String) -> (Int, String) {
    let qtdPeriod = value / duration
    
    let response = "\(qtdPeriod) \(print)"
    let rest = value % duration
    
    return (rest, response)
}


func ex1020(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    let value = userInput.int
    
    var response = ""
    
    // Ano
    let (yearRest, yearResponse) = qtdPeriod(value: value, duration: 365, print: "ano(s)")
    response += yearResponse + "\n"
    
    let (monthRest, monthResponse) = qtdPeriod(value: yearRest, duration: 30, print: "mes(es)")
    response += monthResponse + "\n"
    
    let days = monthRest
    response += "\(days) dia(s)"
    
    input.print(response)
}


// ex1020()



/*
 Resolução com uso de loop -> mais "custoso" e demorado!
 
func ex1020(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    var value = userInput.int
    
    let year = 365
    let month = 30
    
    let periods = [year, month]
    let periodsValue = [
        year: "ano(s)",
        month: "mes(es)"
    ]
    
    var response = ""
    for period in periods {
        let qtdPeriod = value / period
        
        let periodValue = periodsValue[period]!
        response += "\(qtdPeriod) \(periodValue)\n"
        
        value = value % period
    }
    
    response += "\(value) dia(s)"
    
    input.print(response)
}

 */
