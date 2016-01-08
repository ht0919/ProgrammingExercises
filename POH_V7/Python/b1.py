n = int(input())
q = [ input().split() for i in range(n) ]
m = int(input())
p = [ input().split() for i in range(m) ]
s = len(q) - len(p) + 1
t = False
for i in range(s):
    for j in range(s):
        r = [ q[i+k][j:len(p)+j] for k in range(len(p)) ]
        if r == p:
            print(str(i),str(j))
            t = True
            break
    if t == True:
        break
