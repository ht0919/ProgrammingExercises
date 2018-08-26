s = input().rstrip().split(' ')
N = int(s[0])
M = int(s[1])
K = int(s[2])
r = [0] * N
for i in range(M):
    r[ int(input()) - 1 ] = i + 1

for i in range(K):
    for j in range(M):
        p1 = r.index(j+1)
        p2 = p1 + 1
        if p2 >= N:
            p2 = 0

        for k in range(N):
            if r[p2] == 0:
                break
            p2 += 1
            if p2 >= N:
                p2 = 0

        r[p2] = r[p1]
        r[p1] = 0

for i in range(M):
    p1 = r.index(i+1)
    print(p1+1)
