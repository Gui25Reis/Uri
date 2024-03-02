//
//  Gui Reis  -  gui.sreis25@gmail.com - 02/03/24
//

import XCTest
@testable import UriFramework


final class Ex1021Tests: XCTestCase {
    
    var inputs: [String]! = .init()
    
    
    /* Ciclo de Vida */
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        inputs = nil
        super.tearDown()
    }
    
    
    /* Aux */
    private func validate(expected: String) {
        // Prepare
        let provider = MockInputProvider(inputs: inputs)
        
        // Action
        ex1021(input: provider)
        
        // Validation
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = """
        NOTAS:
        5 nota(s) de R$ 100.00
        1 nota(s) de R$ 50.00
        1 nota(s) de R$ 20.00
        0 nota(s) de R$ 10.00
        1 nota(s) de R$ 5.00
        0 nota(s) de R$ 2.00
        MOEDAS:
        1 moeda(s) de R$ 1.00
        1 moeda(s) de R$ 0.50
        0 moeda(s) de R$ 0.25
        2 moeda(s) de R$ 0.10
        0 moeda(s) de R$ 0.05
        3 moeda(s) de R$ 0.01
        """
        inputs = ["576.73"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_02() {
        // Prepare
        let expected = """
        NOTAS:
        0 nota(s) de R$ 100.00
        0 nota(s) de R$ 50.00
        0 nota(s) de R$ 20.00
        0 nota(s) de R$ 10.00
        0 nota(s) de R$ 5.00
        2 nota(s) de R$ 2.00
        MOEDAS:
        0 moeda(s) de R$ 1.00
        0 moeda(s) de R$ 0.50
        0 moeda(s) de R$ 0.25
        0 moeda(s) de R$ 0.10
        0 moeda(s) de R$ 0.05
        0 moeda(s) de R$ 0.01
        """
        inputs = ["4.00"]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = """
        NOTAS:
        0 nota(s) de R$ 100.00
        1 nota(s) de R$ 50.00
        2 nota(s) de R$ 20.00
        0 nota(s) de R$ 10.00
        0 nota(s) de R$ 5.00
        0 nota(s) de R$ 2.00
        MOEDAS:
        1 moeda(s) de R$ 1.00
        0 moeda(s) de R$ 0.50
        0 moeda(s) de R$ 0.25
        0 moeda(s) de R$ 0.10
        0 moeda(s) de R$ 0.05
        1 moeda(s) de R$ 0.01
        """
        inputs = ["91.01"]
        
        // Action
        validate(expected: expected)
    }
}
