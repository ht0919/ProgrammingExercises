s = input().rstrip().split(' ')
N = int(s[0])
V = int(s[1])
t = []
p = []

for i in range(N):
    s = input().rstrip().split(' ')
    t.append(int(s[0]))
    p.append(int(s[1]))

t1 = t[0]
p1 = p[0]
flg = False
for i in range(1,N):
    a = t[i] - t1
    b = p[i] - p1
    c = b / a
    if c > V:
        flg = True
        break
    t1 = t[i]
    p1 = p[i]

if flg:
    print('YES')
else:
    print('NO')
