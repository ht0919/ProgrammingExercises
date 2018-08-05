u = 0
h = 0
s = input().rstrip()
for i in range(len(s)):
    if s[i] == '-':
        h += 1
    elif s[i] == '_':
        u += 1

if h > u:
    d = s.translate(s.maketrans('_','-'))
elif h < u:
    d = s.translate(s.maketrans('-','_'))
else:
    d = s.translate(s.maketrans('-','_'))

print(d)