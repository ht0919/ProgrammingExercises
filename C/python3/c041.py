N = int(input())
arr = []
for i in range(N):
    sl = input().rstrip().split(' ')
    arr.append([int(s) for s in sl])

arr.sort(key=lambda x:(-x[0],-x[1],-x[2]))

for i in range(N):
    print(arr[i][0],arr[i][1],arr[i][2])