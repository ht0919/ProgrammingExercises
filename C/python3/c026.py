tmp = input().rstrip().split(' ')
N = int(tmp[0])
S = int(tmp[1])
p = int(tmp[2])
mm = 0
nn = 0
for i in range(N):
    tmp = input().rstrip().split(' ')
    m = int(tmp[0])
    s = int(tmp[1])
    if s >= (S-p) and s <= (S+p) and mm < m:
        mm = m
        nn = i+1
if nn > 0:
    print(nn)
else:
    print("not found")
