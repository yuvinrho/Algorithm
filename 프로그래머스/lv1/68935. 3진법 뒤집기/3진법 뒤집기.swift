import Foundation
func solution(_ n:Int) -> Int {
    var answer = ""
    answer = String(n, radix: 3)
    answer = String(answer.reversed())
    return Int(answer, radix: 3)!
}