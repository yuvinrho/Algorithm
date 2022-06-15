n, m = map(int, input().split())
board = []
countList = []

for _ in range(n):
    board.append(input())

for chessRow in range(n-7):
    for chessCol in range(m-7):
        case1 = 0
        case2 = 0
        for i in range(chessRow,chessRow+8):
            for j in range(chessCol,chessCol+8):
                if (i + j) % 2 == 0:
                    if board[i][j] != 'W':
                        case1 += 1
                    if board[i][j] != 'B':
                        case2 += 1
                else:
                    if board[i][j] != 'B':
                        case1 += 1
                    if board[i][j] != 'W':
                        case2 += 1
        
        countList.append(case1)
        countList.append(case2)
print(min(countList))