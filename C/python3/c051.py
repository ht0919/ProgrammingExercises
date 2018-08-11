s = input().rstrip().split(' ')
a = []
for i in range(len(s)):
    a.append(int(s[i]))

a.sort(reverse=True)
temp = a[1]
a[1] = a[2]
a[2] = temp
print((a[0]*10+a[1]) + (a[2]*10+a[3]))
