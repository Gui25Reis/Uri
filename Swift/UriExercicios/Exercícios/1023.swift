//
//  Gui Reis  -  gui.sreis25@gmail.com - 05/03/24
//

/**
 Devido às constantes estiagens que aconteceram nos últimos tempos em algumas regiões do Brasil, o governo federal criou um órgão para a avaliação do consumo destas regiões com finalidade de verificar o comportamento da população na época de racionamento. Este órgão responsável irá pegar algumas cidades (por amostragem) e verificará como está sendo o consumo de cada uma das pessoas da cidade e o consumo médio de cada cidade por habitante.

 Entrada
 A entrada contém vários casos de teste. A primeira linha de cada caso de teste contém um inteiro N (1 ≤ N ≤ 1*106), indicando a quantidade de imóveis. As N linhas contém um par de valores X (1 ≤ X ≤ 10) e Y (1 ≤ Y ≤ 200), indicando a quantidade de moradores de cada imóvel e o respectivo consumo total de cada imóvel (em m3). Com certeza, nenhuma residência consome mais do que 200 m3 por mês. O final da entrada é representado pelo número zero.

 Saída
 Para cada entrada, deve-se apresentar a mensagem “Cidade# n:”, onde n é o número da cidade seguindo a sequência (1, 2, 3, ...) e em seguida deve-se listar, por ordem ascendente de consumo, a quantidade de pessoas seguido de um hífen e o consumo destas pessoas, arredondando o valor para baixo. Na terceira linha da saída deve-se mostrar o consumo médio por pessoa da cidade, com 2 casas decimais sem arredondamento, considerando o consumo real total. Imprimir uma linha em branco entre dois casos de teste consecutivos. No fim da saída não deve haver uma linha em branco.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1023
 */


// MARK: - Exercício

/*
 Exercício reprovado por limite de tempo!
 */

import Foundation


fileprivate struct Consumption {
    
    /// Consumption Per People
    ///
    /// Chave: Consumo médio por pessoa
    /// Valor: Qtd de pessoas
    var cpp = [Int: Int]()
    
    var totalMeters = 0
    
    
    mutating func newConsumption(people: Int, meters: Int) {
        let avarage = meters / people
        
        totalMeters += meters
        
        let hasValue = cpp[avarage] != nil
        if hasValue {
            cpp[avarage]? += people
        } else {
            cpp[avarage] = people
        }
    }
    
    
    func makeResponse(city: Int) -> String {
        var response = "Cidade# \(city):"
        
        let consumptionResult = makeConsumptionList()
        response += "\n" + consumptionResult
        
        let avarege = getAverageConsumption()
        response += "\n" + "Consumo medio: \(avarege.precision(of: 2, type: .down)) m3."
        
        return response
    }
    
    private func makeConsumptionList() -> String {
        var result = ""
        
        var counter = 0
        let total = cpp.count
        
        for key in cpp.keys.sorted() {
            counter += 1
            
            let people = cpp[key]!
            result += "\(people)-\(key)"
            
            if counter != total {
                result += " "
            }
        }
        
        return result
    }
    
    private func getAverageConsumption() -> Float {
        let totalPeople = cpp.values.reduce(0, +)
        
        let average = Float(totalMeters) / Float(totalPeople)
        
        print("Average: \(average)")
        return average
    }
}


fileprivate func calculateConsumption(qtd: Int, _ input: InputProvider) -> Consumption {
    var consumption = Consumption()
    
    for _ in 0..<qtd {
        let userInput = input.readLine()!
        
        let values = userInput.split()
        let (people, meters) = (values[0].int, values[1].int)
        
        consumption.newConsumption(people: people, meters: meters)
    }
    
    return consumption
}


func ex1023(input: InputProvider = DefaultInputProvider()) {
    var userInput = input.readLine()!
    var counter = 0
    
    var response = ""
    
    while userInput != "0" {
        counter += 1
        let qtd = userInput.int
        
        let consumption = calculateConsumption(qtd: qtd, input)
        
        if !response.isEmpty {
            response += "\n\n"
        }
        response += consumption.makeResponse(city: counter)
        
        userInput = input.readLine()!
    }
    
    input.print(response)
}


// ex1023()
