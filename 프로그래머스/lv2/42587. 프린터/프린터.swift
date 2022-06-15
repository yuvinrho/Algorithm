import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var answer = 0
    var prioritiesQueue: [(Int, Int)] = priorities.enumerated().map { ($0.offset, $0.element) }
    let target = prioritiesQueue[location]
    
    while !prioritiesQueue.isEmpty {
        if prioritiesQueue[0].1 == prioritiesQueue.map { $0.1 }.max() {
            answer += 1
            if target == prioritiesQueue.removeFirst() { break }
        } else {
            prioritiesQueue.append(prioritiesQueue[0])
            prioritiesQueue.removeFirst()
        }
    }
    return answer
}