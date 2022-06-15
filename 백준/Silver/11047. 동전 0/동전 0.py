n, k = map(int, input().split())
coins = []
count = 0

for _ in range(n):
    coins.append(int(input()))
coins.sort(reverse=True)

for coin in coins:
        count += k // coin
        k = k % coin
print(count)