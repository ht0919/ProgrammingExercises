n = int(input())
a = input().rstrip().split(' ')
b = []
for i in range(n):
    b.append(int(a[i]))
b.sort()
i = int((n+1)/2)
print(b[i-1])
