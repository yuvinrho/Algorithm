// 11726 2xn 타일링
import Foundation

let n = Int(readLine()!)!
var dp = Array.init(repeating: 0, count: n + 1)

for i in 1...n {
    if i == 1 { dp[i] = 1 }
    if i == 2 { dp[i] = 2 }
    
    if i > 2 {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 10007 // 10007로 나눠준 값을 dp에 집어넣음. 숫자가 커서 오버플로우남
    }
}
print(dp[n])
