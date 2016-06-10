import math
s = input().rstrip().split(' ')
n = int(s[0])
p = int(s[1])
s = input().rstrip().split(' ')
m = int(s[0])
q = int(s[1])
a1 = p * n
a2 = q * math.ceil(n / m)
print(a1 + a2)
