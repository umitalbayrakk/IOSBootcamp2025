import Foundation

var fullName: String = "Ümit Albayrak"


var age: Int = 25


var height: Double = 1.80


var lovesCoding: Bool = true


var nickname: String? = nil 

if let currentNickname = nickname {
    print("Nickname: \(currentNickname)")
} else {
    print("No nickname available.")
}

print("""
👤 Full Name: \(fullName)
🎂 Age: \(age)
📏 Height: \(height)
💻 Loves coding: \(lovesCoding ? "Yes" : "No")
""")


func calculator(_ num1: Double, _ num2: Double, operation: String) -> Double? {
    switch operation {
    case "add":
        return num1 + num2
    case "subtract":
        return num1 - num2
    case "multiply":
        return num1 * num2
    case "divide":
        return num2 != 0 ? num1 / num2 : nil
    default:
        return nil
    }
}


print("Addition: \(calculator(10, 5, operation: "add")!)")
print("Subtraction: \(calculator(10, 5, operation: "subtract")!)")
print("Multiplication: \(calculator(10, 5, operation: "multiply")!)")
if let result = calculator(10, 0, operation: "divide") {
    print("Division: \(result)")
} else {
    print("Error: Division by zero is not allowed!")
}


let numbers = [10, 3, 7, 22, 5, 8, 15]

let evenNumbers = numbers.filter { $0 % 2 == 0 }
print("Even Numbers: \(evenNumbers)")


let sortedNumbers = numbers.sorted { $0 > $1 }
print("Sorted Descending: \(sortedNumbers)")
