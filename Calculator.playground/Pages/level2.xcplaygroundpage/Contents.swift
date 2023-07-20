import UIKit

// LEVEL 1
class CalculatorLv1 {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func subtract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    func divide(_ a: Double, _ b: Double) -> Double {
        if b != 0 {
            return a / b
        } else {
            print("Error: Cannot divide by zero")
            return 0
        }
    }
}

// LEVEL 2
class CalculatorLv2: CalculatorLv1 {
    func modulus(_ a: Int, _ b: Int) -> Int {
        if b != 0 {
            return a % b
        } else {
            print("Error: Cannot divide by zero")
            return 0
        }
    }
}

let calculatorLv2 = CalculatorLv2()
print(calculatorLv2.modulus(3, 2))  // 출력: 1

