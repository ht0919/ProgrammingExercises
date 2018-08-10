N = int(input())
t = {}
s = input().rstrip().split(' ')
for i in range(N):
    t[s[i]] = 0

M = int(input())
for i in range(M):
    l_s = input().rstrip().split(' ')
    t[l_s[0]] += int(l_s[1])

t2 = sorted(t.items(), key=lambda x: -x[1])
for i in range(N):
    print(t2[i][0])
