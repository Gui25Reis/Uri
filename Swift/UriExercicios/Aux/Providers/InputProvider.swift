//
//  Gui Reis  -  gui.sreis25@gmail.com - 23/02/24.
//


protocol InputProvider {
    func readLine() -> String?
    func print(_ data: String)
}


class DefaultInputProvider: InputProvider {
    func readLine() -> String? {
        return Swift.readLine()
    }
    
    func print(_ data: String) {
        Swift.print(data)
    }
}


class MockInputProvider: InputProvider {
    private let inputs: [String]
    private var index = 0
    
    var dataPrinted: String?

    init(inputs: [String]) {
        self.inputs = inputs
    }

    func readLine() -> String? {
        guard index < inputs.count else { return nil }
        defer { index += 1 }
        return inputs[index]
    }
    
    func print(_ data: String) {
        dataPrinted = data
    }
}
