import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let line = String(Array.init(repeating: "*", count: input[0]))
for i in 0..<input[1] {
    print(line)
}