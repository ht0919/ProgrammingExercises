s = input().rstrip().split(' ')
l = [int(s) for s in s]
cnt = 0 
for i in range(10):
    if l[i] <= 2:
        cnt += 1
print(cnt)
