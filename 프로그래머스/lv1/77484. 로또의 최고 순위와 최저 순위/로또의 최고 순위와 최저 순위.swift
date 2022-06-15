import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var rank:[Int] = []
    var hitCount = 0
    var zeroCount = 0
    
    hitCount = win_nums.filter { lottos.contains($0) }.count
    zeroCount = lottos.filter { $0 == 0 }.count
    
    return [min(7 - (hitCount + zeroCount), 6), min(7 - hitCount, 6)]
}