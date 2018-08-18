s = input().rstrip().split(' ')
H = int(s[0])
W = int(s[1])
N = int(s[2])
t = [[0 for i in range(W)] for j in range(H)]
for i in range(H):
    s = input().rstrip().split(' ')
    for j in range(W):
        t[i][j] = int(s[j])

p = [0 for i in range(N)]
pn = 0
L = int(input())
for i in range(L):
    s = input().rstrip().split(' ')
    a = int(s[0])
    b = int(s[1])
    A = int(s[2])
    B = int(s[3])

    if t[a-1][b-1] == t[A-1][B-1]:
        p[pn] += 2
    else:
        pn += 1
        if pn == N:
            pn = 0

for i in range(N):
    print(p[i])