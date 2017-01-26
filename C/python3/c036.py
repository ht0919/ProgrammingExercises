s = input().rstrip().split(' ')
p1 = int(s[0])
p2 = int(s[1])
s = input().rstrip().split(' ')
p3 = int(s[0])
p4 = int(s[1])

s = input().rstrip().split(' ')
if int(s[p1-1]) < int(s[p2-1]):
    p5 = p1
else:
    p5 = p2
if int(s[p3-1]) < int(s[p4-1]):
    p6 = p3
else:
    p6 = p4

s = input().rstrip().split(' ')
if int(s[0]) < int(s[1]):
    if p5<p6:
        print(p5)
        print(p6)
    else:
        print(p6)
        print(p5)
else:
    if p5<p6:
        print(p6)
        print(p5)
    else:
        print(p5)
        print(p6)
