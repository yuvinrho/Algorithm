n = int(input())

count = 1
room = 1

while n > room:
    room = room + (6 * count)
    count += 1

print(count)