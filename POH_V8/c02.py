tmp = input().rstrip().split(' ')
n = int(tmp[0])
m = int(tmp[1])
s = input()
t = input()
for i in range(n):
    if t.find(s[i]) >= 0:
        t = t.replace(s[i],"_",1)
        m -= 1
print(m)
