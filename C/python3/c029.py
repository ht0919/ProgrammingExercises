s = input().rstrip().split(' ')
M = int(s[0])
N = int(s[1])
a1 = [0] * M
b1 = [0] * M
for i in range(M):
    s = input().rstrip().split(' ')
    a1[i] = int(s[0])
    b1[i] = int(s[1])

b2 = [0] * (M-N+1)
for i in range(M-N+1):
    sum = 0
    for j in range(N):
        sum += b1[i+j]
    b2[i] = sum

min = b2[0]
day = a1[0]
for i in range(M-N+1):
    if min > b2[i]:
        min = b2[i]
        day = a1[i]

print("{0} {1}".format(day,(day+N-1)))
