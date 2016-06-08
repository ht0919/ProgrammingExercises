s = input().rstrip().split(' ')
M = int(s[0])
N = int(s[1])
p = M - N
if p<0:
    p = 0
print(p)
