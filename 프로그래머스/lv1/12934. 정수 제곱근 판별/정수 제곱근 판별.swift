import Foundation
func solution(_ n:Int64) -> Int64 {
    let x = Int64(sqrt(Double(n)))
    return x * x == n ? Int64((x + 1) * (x + 1)) : Int64(-1)
}