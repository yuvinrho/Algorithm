import sys
n = int(sys.stdin.readline())

for _ in range(n):
    cnt = 0
    avg = 0
    score = list(map(int, sys.stdin.readline().split()))
    avg = sum(score[1:]) / score[0]
    for i in score[1:] :
        if i > avg:
            cnt += 1
    rate = cnt / score[0] * 100
    print(f'{rate:.3f}%')