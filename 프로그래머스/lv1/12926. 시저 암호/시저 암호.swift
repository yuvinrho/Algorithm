import Foundation
func solution(_ s:String, _ n:Int) -> String {
    var answer: [String] = []
    let lowerCase = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let upperCase = lowerCase.map { $0.uppercased() }
    for chr in Array(s) {
        if chr == " " {
            answer.append(" ")
        } else {
            if chr.isUppercase {
                answer.append(upperCase[(upperCase.firstIndex(of: chr.uppercased())! + n) % 26])
            } else {
                answer.append(lowerCase[(lowerCase.firstIndex(of: chr.lowercased())! + n) % 26])
            }
        }
    }
    return answer.joined()
}