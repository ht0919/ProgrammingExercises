s = input().rstrip().split(' ')
a = int(s[0])
b = int(s[1])
if a >= 5:
    a = 5
if b >= 5:
    b = 5
print(a+b)