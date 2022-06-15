def func (n):
    if n < 100:
        return print(n)
    else:
        cnt = 99
        for i in range(100, n+1):
            a = i // 100
            b = i % 100 // 10
            c = i % 10
            
            if a-b == b-c :
                cnt+=1
        
        return print(cnt)
            
        
n = int(input())
func(n)