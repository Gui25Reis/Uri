//
//  Gui Reis  -  gui.sreis25@gmail.com - 29/02/24
//

/**
 Flíper é um tipo de jogo onde uma bolinha de metal cai por um labirinto de caminhos até chegar na parte de baixo do labirinto. A quantidade de pontos que o jogador ganha depende do caminho que a bolinha seguir. O jogador pode controlar o percurso da bolinha mudando a posição de algumas portinhas do labirinto. Cada portinha pode estar na posição 0, que significa virada para a esquerda, ou na posição 1 que quer dizer virada para a direita. Considere o flíper da figura abaixo, que tem duas portinhas. A portinha P está na posição 1 e a portinha R, na posição 0. Desse jeito, a bolinha vai cair pelo caminho B.

 [imagem](https://resources.beecrowd.com/gallery/images/contests/UOJ_177_L.png)!


 Você deve escrever um programa que, dadas as posições das portinhas P e R, neste flíper da figura, diga por qual dos três caminhos, A, B ou C, a bolinha vai cair!

 Entrada
 A entrada é composta por apenas uma linha contendo dois números P (0 ou 1) e R (0 ou 1), indicando as posições das duas portinhas do flíper da figura.

 Saída
 A saída do seu programa deve ser também apenas uma linha, contendo uma letra maiúscula que indica o caminho por onde a bolinha vai cair: ‘A’, ‘B’ ou ‘C’.
 
 
 link: https://judge.beecrowd.com/pt/problems/view/2454
 */


// MARK: - Exercício

import Foundation


fileprivate class Node {
    private(set) var value: String = ""
    private let _leftNode: Node?
    private let _rightNode: Node?
    
    var leftNode: Node { _leftNode ?? self }
    var rightNode: Node { _rightNode ?? self }
    
    
    /* Construtores */
    init(value: String) {
        self.value = value
        _leftNode = nil
        _rightNode = nil
    }
    
    init(leftNode: Node?, rightNode: Node?) {
        _leftNode = leftNode
        _rightNode = rightNode
    }
    
    
    /* Métodos */
    func start(with doors: [String]) -> String {
        let node = accessNode(self, doors: doors)
        return node.value
    }
    
    private func accessNode(_ node: Node, doors: [String], actualDoor: Int = 0) -> Node {
        let door = doors[actualDoor]
        let node = door == "0" ? node.rightNode : node.leftNode
        
        let nextDoor = actualDoor + 1
        let isLastDoor = nextDoor == doors.count
        
        return isLastDoor
        ? node
        : accessNode(node, doors: doors, actualDoor: nextDoor)
    }
    
    static func createBinaryTree() -> Node {
        return Node(
            leftNode: Node(
                leftNode: Node(value: "A"),
                rightNode: Node(value: "B")
            ),
            rightNode: Node(value: "C")
        )
    }
}


func ex2454(input: InputProvider = DefaultInputProvider()) {
    let userInput = input.readLine()!
    let doors = userInput.split()
    
    let tree = Node.createBinaryTree()
    let response = tree.start(with: doors)
    
    input.print(response)
}


// ex2454()
