n = int(input())
time = list(map(int, input().split()))
result = 0
time.sort()

for i in range(1, len(time) + 1):
    result += sum(time[:i])

print(result)