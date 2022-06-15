var numbers: [Int] = []
for _ in 1...9 {
    numbers.append(Int(readLine()!)!)
}
print(numbers.max()!, numbers.firstIndex(of: numbers.max()!)! + 1, separator: "\n")
