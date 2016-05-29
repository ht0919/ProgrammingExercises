tmp = input().rstrip().split(' ')
n = int(tmp[0])
d = int(tmp[1])
e = int(tmp[2])
if n <= d * e:
    print('OK')
else:
    print('NG')