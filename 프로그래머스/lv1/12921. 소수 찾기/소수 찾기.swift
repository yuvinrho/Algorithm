import Foundation

func solution(_ n:Int) -> Int {
    var isPrime = Array.init(repeating: true, count: n+1)
        
    for i in 2...Int(sqrt(Double(n))) + 1 {
        if isPrime[i] {
            for j in stride(from: i + i, through: n, by: i) {
                isPrime[j] = false
            }
        }
    }
    
    return (2...n).filter { isPrime[$0] }.count
}