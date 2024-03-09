//
//  Gui Reis  -  gui.sreis25@gmail.com - 04/03/24
//

/**
 Solicitaram para que você construisse um programa simples de criptografia. Este programa deve possibilitar enviar mensagens codificadas sem que alguém consiga lê-las. O processo é muito simples. São feitas três passadas em todo o texto.

 Na primeira passada, somente caracteres que sejam letras minúsculas e maiúsculas devem ser deslocadas 3 posições para a direita, segundo a tabela ASCII: letra 'a' deve virar letra 'd', letra 'y' deve virar caractere '|' e assim sucessivamente. Na segunda passada, a linha deverá ser invertida. Na terceira e última passada, todo e qualquer caractere a partir da metade em diante (truncada) devem ser deslocados uma posição para a esquerda na tabela ASCII. Neste caso, 'b' vira 'a' e 'a' vira '`'.

 Por exemplo, se a entrada for “Texto #3”, o primeiro processamento sobre esta entrada deverá produzir “Wh{wr #3”. O resultado do segundo processamento inverte os caracteres e produz “3# rw{hW”. Por último, com o deslocamento dos caracteres da metade em diante, o resultado final deve ser “3# rvzgV”.

 Entrada
 A entrada contém vários casos de teste. A primeira linha de cada caso de teste contém um inteiro N (1 ≤ N ≤ 1*10ˆ4), indicando a quantidade de linhas que o problema deve tratar. As N linhas contém cada uma delas M (1 ≤ M ≤ 1*103) caracteres.

 Saída
 Para cada entrada, deve-se apresentar a mensagem criptografada.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/1024
 */


// MARK: - Exercício

import Foundation


fileprivate struct Encryptor {
    
    /* Caracteres maiúsculos e minúsculos 3 pra direita */
    private func step01(_ data: String) -> String {
        var newData = [Character]()
        
        for char in data {
            let isValid = char.isLetter // && (char.isUppercase || char.isLowercase)
            let asciiNumber = char.asciiValue
            
            guard isValid, let asciiNumber else {
                newData.append(char)
                continue
            }
            
            let newAscii = asciiNumber + 3
            let scalar = UnicodeScalar(newAscii)
            let newChar = Character(scalar)
            
            newData.append(newChar)
        }
        
        let newString = String(newData)
        return newString
    }

    /* Inverção */
    private func step02(_ data: String) -> String {
        let newData = data.reversed()
        
        let newString = String(newData)
        return newString
    }

    /* Segunda metada um caracter pra esquerda */
    private func step03(_ data: String) -> String {
        let total = data.count
        let half = total / 2
        
        var newData = [Character]()
        var counter = 0
        
        for char in data {
            defer { counter += 1 }
            
            let asciiNumber = char.asciiValue
            let isSecondHalf = counter >= half
            
            guard isSecondHalf, let asciiNumber else {
                newData.append(char)
                continue
            }
            
            let newAscii = asciiNumber - 1
            let scalar = UnicodeScalar(newAscii)
            let newChar = Character(scalar)
            newData.append(newChar)
        }
        
        let newString = String(newData)
        return newString
    }


    func encrypt(data: String) -> String {
        // print("\nData: \(data)")
        
        let step01 = step01(data)
        // print("Step 01: \(step01)")
        
        let step02 = step02(step01)
        // print("Step 02: \(step02)")
        
        let step03 = step03(step02)
        // print("Step 03: \(step03)")
        
        return step03
    }
}


func ex1024(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    let qtd = userInput.int
    
    let qtdWithSpace = qtd - 1
    let ecnryptor = Encryptor()
    
    var response = ""
    for num in 0..<qtd {
        let userInput = input.readLine()!
            
        let encrypted = ecnryptor.encrypt(data: userInput)
        response += encrypted
        
        let isNotLastStep = num != qtdWithSpace
        if isNotLastStep {
            response += "\n"
        }
    }
    
    input.print(response)
}


// ex1024()
