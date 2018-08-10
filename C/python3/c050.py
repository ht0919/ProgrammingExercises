l_s = input().rstrip().split(' ')
S = int(l_s[0])
a = int(l_s[1])
b = int(l_s[2])
win = ''
while True:
    if S > a:
        win = 'B'
        break
    if S > b:
        win = 'A'
        break

    S += 10
    if S > b:
        win = 'A'
        break

    S += 1000
    if S > b:
        win = 'A'
        S -= 1000
        break

print(win, S)
