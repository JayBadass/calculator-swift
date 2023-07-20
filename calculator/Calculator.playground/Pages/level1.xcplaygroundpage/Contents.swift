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

let calculatorLv1 = CalculatorLv1()
print(calculatorLv1.add(3, 2))       // 출력: 5.0
print(calculatorLv1.subtract(3, 2))  // 출력: 1.0
print(calculatorLv1.multiply(3, 2))  // 출력: 6.0
print(calculatorLv1.divide(3, 2))    // 출력: 1.5

