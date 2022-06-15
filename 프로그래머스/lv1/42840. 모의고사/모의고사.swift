import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var result: [Int: Int] = [:]
    
    let student1 = [1, 2, 3, 4, 5]
    let student2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let student3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    for i in 0..<answers.count {
        if answers[i] == student1[i % student1.count] {
            result[1] = (result[1] ?? 0) + 1
        }
        
        if answers[i] == student2[i % student2.count] {
            result[2] = (result[2] ?? 0) + 1
        }
        
        if answers[i] == student3[i % student3.count] {
            result[3] = (result[3] ?? 0) + 1
        }
    }
    return result.filter {
        $0.value == result.values.max()
    }.sorted { $0.key < $1.key }.map { $0.key }
}