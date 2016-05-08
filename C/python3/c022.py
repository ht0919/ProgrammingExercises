s = []; e = []; h = []; l = []
n = int(input())
for i in range(n):
    line = input().rstrip().split(' ')
    s.append(int(line[0]))
    e.append(int(line[1]))
    h.append(int(line[2]))
    l.append(int(line[3]))
print("{0} {1} {2} {3}".format(s[0],e[-1],max(h),min(l)))
