import Foundation

func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1) { lcd($0, $1) } 
}

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func lcd(_ a: Int, _ b: Int) -> Int {
    return  (a * b) / gcd(a, b)
}