func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var map = (0..<n).map { String((arr1[$0] | arr2[$0]), radix: 2) }
    for i in map.indices {
        while(map[i].count < n) {
            map[i] = "0" + map[i]
        }
    }
    
    return (0..<n).map { map[$0]
        .replacingOccurrences(of: "1", with: "#")
        .replacingOccurrences(of: "0", with: " ") }
}