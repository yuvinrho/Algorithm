import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0] //정점개수
let m = input[1] //간선개수
let v = input[2] //시작점

var graph: [[Int]] = Array(repeating: [], count: n + 1)
var visitedNodes: [Bool] = Array(repeating: false, count: n + 1)

var result1 = ""
var result2 = ""

for _ in 1...m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let node1 = input[0]
    let node2 = input[1]
    graph[node1].append(node2)
    graph[node2].append(node1)
    graph[node1].sort()
    graph[node2].sort()
}


func dfs(_ startNode: Int) {
    visitedNodes[startNode] = true
    print(startNode, terminator: " ")
    
    for endNode in graph[startNode] {
        if !visitedNodes[endNode] {
            dfs(endNode)
        }
    }
}

func bfs(_ startNode: Int) {
    var queue: [Int] = [startNode]
    visitedNodes[startNode] = true
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        print(node, terminator: " ")
        for i in graph[node] {
            if visitedNodes[i] == false {
                queue.append(i)
                visitedNodes[i] = true
            }
        }
    }
}

dfs(v)
visitedNodes = Array(repeating: false, count: n + 1)
print("")
bfs(v)