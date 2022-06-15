import Foundation

var n = Int(readLine()!)!
var dp = Array.init(repeating: 0, count: 10000001)

for i in 1...n {
    if i > 1 {
        dp[i] = dp[i - 1] + 1
        
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i / 3] + 1)
        }
        
        if i % 2 == 0 {
            dp[i] = min(dp[i], dp[i / 2] + 1)
        }
    }
}

print(dp[n])
