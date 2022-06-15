n = int(input())
result = 0

for i in range(1, n + 1):
    if n == i + sum(map(int, str(i))):
        result = i
        break

print(result)