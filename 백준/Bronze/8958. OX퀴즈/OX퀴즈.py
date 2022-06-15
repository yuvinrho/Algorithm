import sys
n = int(sys.stdin.readline())

for _ in range(n):
    cnt = 0
    score = 0
    asw = str(sys.stdin.readline().strip())
    for i in asw:
        if i == 'O':
            cnt+=1
            score += cnt
        else:
            cnt =0
    print(score)

