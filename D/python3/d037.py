m = int(input())
n = int(input())
a = int(n / m)
if n % m != 0:
    a += 1
print(a)
