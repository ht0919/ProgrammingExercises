s = input().rstrip().split(' ')
n = int(s[0])
k = int(s[1])
a = []
# まずは横の合計を求める
for i in range(n):
    s = input().rstrip().split(' ')
    b = [0]*int(len(s)/k)
    for j in range(len(b)):
        for l in range(k):
            b[j] += int(s[j*k+l])
        b[j] = int(b[j])
    a.append(b)
# 次に縦の合計を求めて平均を表示する
for i in range(int(n/k)):
    for l in range(len(a[j])):
        sum = 0
        for m in range(k):
            sum += a[i*k+m][l]
        print(int(sum/(k*k)),end='')
        if l<len(a[j])-1:
            print(' ',end='')
    print()
