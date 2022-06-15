let count = Int(readLine()!)!

for _ in 1...count {
    print("\(readLine()!.split(separator: " ").map{Int($0)!}.reduce(0, +))")
}