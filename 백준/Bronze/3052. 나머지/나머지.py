import sys
num = [ int(sys.stdin.readline()) % 42 for _ in range(10) ]
print(len(set(num)))