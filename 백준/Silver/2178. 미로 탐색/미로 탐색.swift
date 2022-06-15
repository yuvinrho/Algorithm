import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])
var maze: [[Int]] = []

// 미로 생성
for _ in 0..<n {
    maze.append(readLine()!.map { Int(String($0))! })
}

// 상하좌우
let steps = [(0, 1), (0, -1), (-1, 0), (1, 0)]
var queue:[(Int, Int)] = [(0, 0)] // 시작위치 큐에 담아놓음

// 큐가 비어있지 않을때 까지 반복
while !queue.isEmpty {
    let (x, y) = queue.removeFirst() // 큐에서 현재 x,y 좌표 가져옴
    
    // 4방향으로 위치 확인
    for step in steps {
        let nx = x + step.0
        let ny = y + step.1
        
        // 미로 공간을 벗어나면 무시
        if nx < 0 || nx >= n || ny < 0 || ny >= m {
            continue
        }
        
        // 미로가 0인 칸은 이동할 수 없으니 무시
        if maze[nx][ny] == 0 {
            continue
        }
        
        if maze[nx][ny] == 1 {
            maze[nx][ny] = maze[x][y] + 1
            queue.append((nx, ny))
        }
    }
}

print(maze[n - 1][m - 1])