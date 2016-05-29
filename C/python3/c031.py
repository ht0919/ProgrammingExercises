p = []; s = []
n = int(input())
for i in range(n):
    line = input().rstrip().split(' ')
    p.append(line[0])
    s.append(int(line[1]))

line = input().rstrip().split(' ')
q = line[0]
t = line[1].split(':')
h = int(t[0])
m = t[1]
diff = s[p.index(q)]

for i in range(n):
    hh = h + s[i] - diff
    if hh > 23:
        hh -= 24
    elif hh < 0:
        hh += 24
    hhh = "0"+str(hh)
    print("{0}:{1}".format(hhh[-2:],m))