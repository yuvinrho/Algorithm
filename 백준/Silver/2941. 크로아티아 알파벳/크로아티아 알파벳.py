import sys
input = sys.stdin.readline

al = ['c=', "c-", "dz=", "d-", "lj", "nj", "s=", "z=" ]
word = input().strip()

for i in al:
    word = word.replace(i,'*')

print(len(word))