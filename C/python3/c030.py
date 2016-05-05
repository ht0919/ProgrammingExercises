s = input().rstrip().split(' ')
H = int(s[0])
W = int(s[1])
for i in range(H):
    s = input().rstrip().split(' ')
    for j in range(W):
        if int(s[j]) >= 128:
            print(1,end='')
        else:
            print(0,end='')
        if j < W-1:
            print(' ',end='')
    print()
