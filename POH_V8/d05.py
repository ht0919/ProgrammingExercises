s = input().rstrip().split(' ')
n = int(s[0])
m = int(s[1])
if m % n == 0:
    print("ok")
else:
    print("ng")
