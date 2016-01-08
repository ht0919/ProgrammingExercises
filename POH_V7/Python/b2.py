x,y,z,n = map(int, input().split())
t=[[0,x],[0,y]]
for i in range(n):
    a,b = map(int, input().split())
    t[a].append(b)
v = [x,y]
for i in range(2):
    t[i].sort()
    for j in range(1,len(t[i])):
        v[i] = min(v[i], t[i][j] - t[i][j-1])
print(v[0] * v[1] * z)
