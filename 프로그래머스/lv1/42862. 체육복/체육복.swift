import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var reserveArray = Array(Set(reserve).subtracting(Set(lost))).sorted()
    let lostArray = Array(Set(lost).subtracting(Set(reserve))).sorted()
    var answer = n - lostArray.count
    
    for student in lostArray {
        for (index, value) in reserveArray.enumerated() {
            if student == value - 1 || student == value + 1 {
                answer += 1
                reserveArray.remove(at: index)
                break
            } else {
                continue
            }
        }
    }
    
    return answer
}