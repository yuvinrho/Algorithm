import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var answer: [Int] = []
    var visited = Array.init(repeating: false, count: words.count)
    
    func dfs(_ start: String, _ count: Int) {
        if start == target {
            answer.append(count)
            return
        }
        
        for i in 0..<words.count {
            if visited[i] == false, zip(start, words[i]).filter { $0 != $1 }.count == 1 {
                visited[i] = true
                dfs(words[i], count + 1)
                visited[i] = false
            }
        }
    }
    dfs(begin, 0)
    return answer.min() ?? 0
}