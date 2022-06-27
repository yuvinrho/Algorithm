import Foundation

let number = Int(readLine()!)!
var wordsSet: Set<String> = []
for _ in 0..<number {
    wordsSet.insert(readLine()!)
}
var words: [String] = Array(wordsSet).sorted(by: <).sorted { $0.count < $1.count }
for word in words  {
    print(word)
}