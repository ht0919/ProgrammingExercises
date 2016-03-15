XA = []
XB = []

tmp = input().rstrip().split(' ')
T = tmp[0]
U = int(tmp[1])
tmp = input().rstrip().split(' ')
for x in tmp: XA.append(int(x))
tmp = input().rstrip().split(' ')
for x in tmp: XB.append(int(x))

if T == "A":
    passer = XA[U-1]
    XB.sort()
    b = XB[9]
    flg = False
    num = 1
    for a in XA:
        if a>=55 and a>b and a>passer :
            print(num)
            flg = True
        num += 1
    if flg == False: print("None")
else:
    passer = XB[U-1]
    XA.sort()
    a = XA[1]
    flg = False
    num = 1
    for b in XB:
        if b<=55 and b<a and b<passer :
            print(num)
            flg = True
        num += 1
    if flg == False: print("None")
