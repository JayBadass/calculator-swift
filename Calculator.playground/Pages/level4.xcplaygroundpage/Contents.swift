import UIKit

// LEVEL 4
class AbstractOperation {
    func perform(_ a: Double, _ b: Double) -> Double {
        return 0
    }
}

class AddOperationLv4: AbstractOperation {
    override func perform(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

class SubtractOperationLv4: AbstractOperation {
    override func perform(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
}

class MultiplyOperationLv4: AbstractOperation {
    override func perform(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}

class DivideOperationLv4: AbstractOperation {
    override func perform(_ a: Double, _ b: Double) -> Double {
        if b != 0 {
            return a / b
        } else {
            print("Error: Cannot divide by zero")
            return 0
        }
    }
}

class CalculatorLv4 {
    var operation: AbstractOperation? = nil
    
    func setOperation(_ operation: AbstractOperation) {
        self.operation = operation
    }
    
    func calculate(_ a: Double, _ b: Double) -> Double {
        if let operation = operation {
            return operation.perform(a, b)
        } else {
            print("No operation set")
            return 0
        }
    }
}

let calculatorLv4 = CalculatorLv4()

calculatorLv4.setOperation(AddOperationLv4())
print(calculatorLv4.calculate(3, 2))  // 출력: 5.0

calculatorLv4.setOperation(SubtractOperationLv4())
print(calculatorLv4.calculate(3, 2))  // 출력: 1.0
