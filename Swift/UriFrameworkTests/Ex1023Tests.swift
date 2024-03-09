//
//  Gui Reis  -  gui.sreis25@gmail.com - 05/03/24
//

import XCTest
@testable import UriFramework


final class Ex1023Tests: XCTestCase {
    
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
        ex1023(input: provider)
        
        // Validation
        print(provider.dataPrinted!)
        print()
        print(expected)
        XCTAssertEqual(expected, provider.dataPrinted)
    }
    
    
    /* Testes */
    func test_01() {
        // Prepare
        let expected = """
        Cidade# 1:
        2-5 3-7 3-13
        Consumo medio: 9.00 m3.

        Cidade# 2:
        5-10 6-11 2-20 1-25
        Consumo medio: 13.28 m3.

        Cidade# 3:
        3-0 1-1
        Consumo medio: 0.75 m3.
        """
        inputs = [
            "3", "3 22", "2 11", "3 39",
            "5", "1 25", "2 20", "3 31", "2 40", "6 70",
            "2", "1 1", "3 2",
            "0"
        ]
        
        // Action
        validate(expected: expected)
    }
    
    /*
    func test_02() {
        // Prepare
        let expected = ""
        inputs = ["", "", "", ""]
        
        // Action
        validate(expected: expected)
    }
    
    func test_03() {
        // Prepare
        let expected = ""
        inputs = ["", "", "", ""]
        
        // Action
        validate(expected: expected)
    }
     */
}
