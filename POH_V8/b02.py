tbl = [0]*24
N = int(input())
for i in range(N):
    tmp = input().rstrip().split(' ')
    t = int(tmp[0])
    s = tmp[1]
    if s == "in":
        tbl[t] = 5
    else:
        tbl[t] = 3

c = 0
for i in range(24):
    if tbl[i] == 0 and c>0:
        c -= 1
        tbl[i] = c
        continue
    if tbl[i] != 0 and c==0:
        c = tbl[i]
        continue
    if tbl[i] != 0 and c>0:
        c -= 1
        tbl[i] = tbl[i] + c
        c = tbl[i]
        continue

p = 0
for i in range(24):
    if tbl[i] == 0:
        p += 1
    else:
        p += 2

print(p)
