import math
s = input().rstrip().split(' ')
X = int(s[0])
P = int(s[1]) / 100
sum = 0
while X >= 1:
    sum += X
    X = math.floor(X - X * P)

print(sum)
