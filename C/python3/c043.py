N = int(input())
s = input().rstrip().split(' ')
t = {}
for i in range(N):
    if s[i] in t.keys():
        t[s[i]] += 1
    else:
        t[s[i]] = 1

t2 = sorted(t.items(), key=lambda x: -x[1])
l_i = []
l_i.append(int(t2[0][0]))
for i in range(1, len(t2)):
    if t2[0][1] == t2[i][1]:
        l_i.append(int(t2[i][0]))
    else:
        break

l_i.sort()
l_s = [str(n) for n in l_i]
s = ' '.join(l_s)
print(s)
