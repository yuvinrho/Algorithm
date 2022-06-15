import Foundation

func solution(_ n:Int64) -> Int64 {
    let answer = String(n).map { String($0) }.sorted(by: >).joined()
    return Int64(answer)!
}