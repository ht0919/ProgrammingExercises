import math
s = input().rstrip().split(' ')
N = int(s[0])
X = int(s[1])
t = [[0 for i in range(4)] for j in range(N)]
for i in range(N):
    s = input().rstrip().split(' ')
    for j in range(len(s)):
        t[i][j] = int(s[j])

p = [0] * N
for i in range(N):
    if X < t[i][0]:
        p[i] = t[i][1]
    else:
        K = X - t[i][0] + 1
        L = math.ceil(K / t[i][2])
        p[i] = t[i][1] + L * t[i][3]

p.sort()
print(p[0],p[-1])
