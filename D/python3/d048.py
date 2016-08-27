n = 5
list = n * [0]
for i in range(n):
    list[i] = int(input())
for i in range(n-1):
    print(list[i+1]-list[i])
