N = int(input())
s = input().rstrip().split(' ')
a = []
t_f = False
for i in range(len(s)):
    if s[i] == 'x10':
        t_f = True
    else:
        a.append(int(s[i]))

a.sort()
if a[0] == 0:
    del a[-1]

total = sum(a)

if t_f:
    total *= 10

print(total)
