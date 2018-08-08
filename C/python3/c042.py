N = int(input())
arr = [['-' for i in range(N)] for j in range(N)]
for i in range(int(N*(N-1)/2)):
    s = input().rstrip().split(' ')
    win = int(s[0]) - 1
    los = int(s[1]) - 1
    arr[win][los] = 'W'
    arr[los][win] = 'L'

for i in range(N):
    print(' '.join(arr[i]))