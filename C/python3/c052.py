s = input().rstrip().split(' ')
H = int(s[0])
W = int(s[1])
s = input().rstrip().split(' ')
dy = abs(int(s[0]))
dx = abs(int(s[1]))
print((dx * H) + (dy * W) - (dy * dx))
