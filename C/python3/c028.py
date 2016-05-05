N = int(input())
score = 0
for i in range(N):
    s = input().rstrip().split(' ')
    q = s[0]
    a = s[1]
    if len(q) != len(a):
        continue
    if q == a:
        score += 2
        continue
    cnt = 0
    for j in range(len(q)):
        if q[j] != a[j]:
            cnt += 1
    if cnt == 1:
        score += 1
print(score)
