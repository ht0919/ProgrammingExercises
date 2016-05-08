a = input().rstrip().split(' ')
n = int(input())
for i in range(n):
    c = 0
    b = input().rstrip().split(' ')
    for j in b:
        if j in a:
            c += 1
    print(c)
