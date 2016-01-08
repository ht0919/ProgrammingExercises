n = int(input())
t = n
for i in range(2,n):
    t *= i
    while t % 10 == 0:
        t //= 10
    t %= 10**(9+8)
print(t % (10**9))
