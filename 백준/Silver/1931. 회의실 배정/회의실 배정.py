n = int(input())
schedule = []
count = 0
last = 0

for _ in range(n):
    start, end = map(int, input().split())
    schedule.append((start, end))

schedule.sort(key=lambda a: a[0])
schedule.sort(key=lambda a: a[1])

for i, j in schedule:
    if i >= last:
        count += 1
        last = j

print(count)