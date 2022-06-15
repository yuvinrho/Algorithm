import Foundation

func solution(_ s:String) -> String {
    let s = s.components(separatedBy: " ")
    var answer: [String] = []
    
    for word in s {
        var newWord = ""
        for (i, char) in word.enumerated() {
            if i % 2 == 0 {
                newWord += char.uppercased()
            } else {
                newWord += char.lowercased()
            }
        }
        answer.append(newWord)
    }
    
    return answer.joined(separator: " ")
}