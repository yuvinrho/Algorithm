import Foundation
let computerNumber = Int(readLine()!)!
let edgeNumber = Int(readLine()!)!

var graph: [[Int]] = Array.init(repeating: [], count: computerNumber + 1)
for _ in 1...edgeNumber {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

// 노드 방문여부를 알 수 있는 배열 생성
var visited: [Bool] = Array.init(repeating: false, count: computerNumber + 1)

// 감염시킨 PC 대수
var answer = 0

func dfs(_ startNode: Int) {
    visited[startNode] = true
    for adjacentNode in graph[startNode] {
        if !visited[adjacentNode] {
            dfs(adjacentNode)
            answer += 1
        }
    }
}

dfs(1)
print(answer)