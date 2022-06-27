import Foundation

let numbers = readLine()!.split(separator: " ").map { Int($0)! * Int($0)! }.reduce(0, +)
print(numbers % 10)