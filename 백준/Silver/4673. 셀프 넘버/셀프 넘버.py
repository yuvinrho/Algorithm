def d(n: int) -> int:
    for i in list(str(n)):
        n += int(i)
    return n

num = set([x for x in range(1,10001)])
not_self_num = set([ d(i) for i in range(1,10001)])
self_num = num - not_self_num
for i in sorted(self_num):
    print(i)