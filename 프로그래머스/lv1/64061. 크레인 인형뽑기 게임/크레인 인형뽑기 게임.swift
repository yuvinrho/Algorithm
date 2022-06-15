import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
var board = board
    var result = 0
    var basket: [Int] = []
        
    for move in moves {
        for (index, line) in board.enumerated() {
            if line[move - 1] == 0 {
                continue
            } else {
                if basket.last == line[move - 1] {
                    result += 2
                    basket.removeLast()
                    board[index][move - 1] = 0
                    break
                } else {
                    basket.append(line[move - 1])
                    board[index][move - 1] = 0
                    break
                }
            }
        }
    }
    
    return result
}