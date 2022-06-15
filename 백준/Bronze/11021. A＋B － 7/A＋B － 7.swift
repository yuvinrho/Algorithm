let number = Int(readLine()!)!

for index in 1...number {
    let result = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
    print("Case #\(index): \(result)")
}