import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (x, y, w, h) = (input[0], input[1], input[2], input[3])
print(min(x - 0, y - 0, w - x, h - y))