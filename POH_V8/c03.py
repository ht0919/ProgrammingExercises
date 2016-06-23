n = int(input()) * 60
m = int(input())
for i in range(m):
    t = int(input())
    n -= t
    if n<0:
        break

if n<0:
    print(i)
else:
    print("OK")
