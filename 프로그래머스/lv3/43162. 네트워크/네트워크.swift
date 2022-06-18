import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var network = 0
    var visited = Array.init(repeating: false, count: n)
    
    func dfs(_ computer: Int) {
        visited[computer] = true
        
        for i in 0..<n {
            if visited[i] == false, computers[computer][i] == 1 {
                dfs(i)
            } 
        }
    }
    
    for i in 0..<n {
        if visited[i] == false {
            network += 1
            dfs(i)
        }
    }
    return network
}