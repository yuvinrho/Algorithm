import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
        
    for i in 0..<nums.count {
           for j in i+1..<nums.count {
               for k in j+1..<nums.count {
                   if isPrime(nums[i] + nums[j] + nums[k]) {
                       answer += 1
                   }
               }
           }
       }
    
    return answer
}

func isPrime(_ number: Int) -> Bool {
    var sieve = Array.init(repeating: true, count: number + 1)
    
    if number < 2 {
        return false
    }
    
    for i in 2...Int(sqrt(Double(number))) + 1 {
        if sieve[i] {
            for j in stride(from: i * 2, through: number, by: i) {
                sieve[j] = false
            }
        }
    }
    return sieve[number]
}