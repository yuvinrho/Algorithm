import sys

n = int(sys.stdin.readline())

for i in range(n):
    data = [x for x in sys.stdin.readline().split()]
    for i in data[1]:
        print(i * int(data[0]), end='')
    print()