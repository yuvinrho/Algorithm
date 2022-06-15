import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var answer = [Int: Double]()
    
    for stageNumber in 1...N {
        var users = 0
        var failUser = 0
        
        for stage in stages {
            if stage >= stageNumber { users += 1 }
            if stage == stageNumber { failUser += 1}
        }
        
        answer[stageNumber] = Double(failUser) / Double(users)
    }
    return answer.sorted(by: <).sorted { $0.1 > $1.1 }.map { $0.0 }
}