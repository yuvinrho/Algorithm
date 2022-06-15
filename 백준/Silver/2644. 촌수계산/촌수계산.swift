import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (person1, person2) = (input[0], input[1])
let line = Int(readLine()!)!

var graph: [[Int]] = Array.init(repeating: [], count: n + 1)
for _ in 1...line {
    let input =  readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

var visited: [Bool] = Array.init(repeating: false, count: n + 1)
var answer = -1
func dfs(_ start: Int, _ count: Int) {
    if start == person2 {
        answer = count
    }
    visited[start] = true
    for person in graph[start] {
        if !visited[person] {
            dfs(person, count + 1)
        }
    }
}

dfs(person1, 0)
print(answer)