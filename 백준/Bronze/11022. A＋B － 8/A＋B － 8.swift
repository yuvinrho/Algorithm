let number = Int(readLine()!)!

for index in 1...number {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    print("Case #\(index): \(numbers[0]) + \(numbers[1]) = \(numbers[0] + numbers[1])")
}