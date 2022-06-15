import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer: [Int] = []
    var progresses = progresses
    var speeds = speeds
    
    while(!progresses.isEmpty) {
        var count = 0
        while(progresses[0] < 100) {
            progresses = zip(progresses, speeds).map(+)
        }
        for progress in progresses {
            if progress >= 100 {
                count += 1
                continue
            }
            break
        }
        progresses.removeSubrange(0..<count)
        speeds.removeSubrange(0..<count)
        answer.append(count)
    }
    return answer
}