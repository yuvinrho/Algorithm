import Foundation
func solution(_ n:Int, _ m:Int) -> [Int] {
    let nmGcd = gcd(n, m)
    return [nmGcd, (n * m) / nmGcd ]
}

func gcd(_ a:Int, _ b:Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a%b)
}