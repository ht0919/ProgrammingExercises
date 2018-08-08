s = input().rstrip().split(' ')
M = int(s[0])
N = int(s[1])

arr = [[0 for i in range(3)] for j in range(M)]
for i in range(M):
    arr[i][0] = i + 1
    arr[i][1] = int(input())
    arr[i][2] = N % arr[i][1]

arr.sort(key=lambda x:(x[2],-x[1]))
print(arr[0][0])
