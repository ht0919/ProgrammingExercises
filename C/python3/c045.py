l_s = input().rstrip().split(' ')
n = int(l_s[0])
s = int(l_s[1])
p = int(l_s[2])
t = []
end = s * p
sta = end - s + 1
for i in range(n):
    if (i+1) >= sta and (i+1) <= end:
        t.append(i+1)

t_s = [str(n) for n in t]
s = ' '.join(t_s)
if len(s) == 0:
    print('none')
else:
    print(s)
