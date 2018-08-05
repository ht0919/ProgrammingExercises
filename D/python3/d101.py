s = input().rstrip().split(' ')
N = int(s[0])
M = int(s[1])
if (N+M)%2 == 1:
    print('YES')
else:
    print('NO')
