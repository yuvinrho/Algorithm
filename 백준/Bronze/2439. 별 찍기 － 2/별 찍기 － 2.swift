let number = Int(readLine()!)!

for index in 1...number {
    for _ in 0..<number-index {
        print(" ", terminator: "")
    }
    for _ in 1...index {
        print("*", terminator: "")
    }
    print("")
}