import Foundation

let n = Int(readLine()!)!

var map: [[Int]] = []
for _ in 0..<n {
    map.append(readLine()!.map { Int(String($0))! })
}

var count = 0
var apartmentCount: [Int] = []

func dfs(_ x: Int, _ y: Int) {
    //단지 범위 벗어나면 리턴
    if x < 0 || y < 0 || x >= n || y >= n || map[x][y] == 0 {
        return
    }

    count += 1
    map[x][y] = 0 // 방문한 곳 0으로 체크

    dfs(x + 1, y)
    dfs(x - 1, y)
    dfs(x, y + 1)
    dfs(x, y - 1)
}

for i in 0..<n {
    for j in 0..<n {
        // 문제에서 1 인곳만 방문
        if map[i][j] == 1 {
            count = 0 //아파트 카운트 초기화
            dfs(i, j) //dfs 호출
            apartmentCount.append(count)
        }
    }
}

print(apartmentCount.count)
apartmentCount.sorted().forEach {
    print($0)
}