func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer:[[Int]] = Array.init(repeating: Array.init(repeating: 0, count: arr1[0].count), count: arr1.count)
    for i in 0..<arr1.count {
        for j in 0..<arr1[0].count {
            answer[i][j] = arr1[i][j] + arr2[i][j]
        }
    }    
    return answer
}