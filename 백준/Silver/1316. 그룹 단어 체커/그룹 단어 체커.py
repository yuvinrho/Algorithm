import sys
input = sys.stdin.readline

n = int(input())
cnt = n

for i in range(n):
    word = input()
    for j in range(1,len(word)-1):
        if word[j] != word[j-1]:
            if word[:j].find(word[j]) != -1:
                cnt -= 1
                break
print(cnt)