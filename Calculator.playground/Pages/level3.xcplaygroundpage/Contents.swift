import UIKit

// LEVEL 3
class AddOperation {
    func perform(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

class SubtractOperation {
    func perform(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
}

class MultiplyOperation {
    func perform(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}

class DivideOperation {
    func perform(_ a: Double, _ b: Double) -> Double {
        if b != 0 {
            return a / b
        } else {
            print("Error: Cannot divide by zero")
            return 0
        }
    }
}

class CalculatorLv3 {
    var operation: Any? = nil
    
    func setOperation(_ operation: Any) {
        self.operation = operation
    }
    
    func calculate(_ a: Double, _ b: Double) -> Double {
        if let operation = operation as? AddOperation {
            return operation.perform(a, b)
        } else if let operation = operation as? SubtractOperation {
            return operation.perform(a, b)
        } else if let operation = operation as? MultiplyOperation {
            return operation.perform(a, b)
        } else if let operation = operation as? DivideOperation {
            return operation.perform(a, b)
        } else {
            print("No operation set")
            return 0
        }
    }
}

let calculatorLv3 = CalculatorLv3()

calculatorLv3.setOperation(AddOperation())
print(calculatorLv3.calculate(3, 2))  // 출력: 5.0

calculatorLv3.setOperation(SubtractOperation())
print(calculatorLv3.calculate(3, 2))  // 출력: 1.0

calculatorLv3.setOperation(MultiplyOperation())
print(calculatorLv3.calculate(10, 10))
