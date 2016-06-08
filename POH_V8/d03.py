cnt = 0
for i in range(5):
    s = input().rstrip().split(' ')
    if s[0] == s[1]:
        cnt += 1

if cnt >= 3:
    print("OK")
else:
    print("NG")
