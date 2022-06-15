import sys
n = int(sys.stdin.readline())
score = list(map(int, sys.stdin.readline().split()))
new_score = [ score[x]/max(score) * 100 for x in range(n)]
print(round(sum(new_score)/n, 2))