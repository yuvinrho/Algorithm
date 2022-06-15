import sys

n = int(sys.stdin.readline())
nums = sys.stdin.readline()
sum = 0
for num in nums[:n]:
    sum += int(num)
print(sum)