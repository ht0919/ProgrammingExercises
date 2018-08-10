N = int(input())
sum = 0
now = 1
for i in range(N):
    f = int(input())
    if now < f:
        sum += f - now
    elif now > f:
        sum += now - f
    now = f

print(sum)
