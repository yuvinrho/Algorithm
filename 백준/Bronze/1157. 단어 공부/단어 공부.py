import sys

string = sys.stdin.readline().strip().upper()
alph = list(set(string))
cnt = []

for i in alph:
    cnt.append(string.count(i))
if cnt.count(max(cnt)) > 1:
    print("?")
else:
    print(alph[(cnt.index(max(cnt)))])  

