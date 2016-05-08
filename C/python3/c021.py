tmp = input().rstrip().split(' ')
xc = int(tmp[0])
yc = int(tmp[1])
r1 = int(tmp[2])
r2 = int(tmp[3])
n = int(input())
for i in range(n):
    tmp = input().rstrip().split(' ')
    x = int(tmp[0])
    y = int(tmp[1])
    a = ((x-xc)**2)+((y-yc)**2)
    if a >= r1**2 and a <= r2**2:
        print("yes")
    else:
        print("no")
