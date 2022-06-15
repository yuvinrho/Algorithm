dial = ['ABC','DEF','GHI','JKL','MNO','PQRS','TUV','WXYZ']
a = input().upper()
time = 0

for i in dial:
    for j in i:
        for b in a:
            if j == b:
                time += dial.index(i) + 3

print(time)
            


