ptbl = [5,3,2,1]
stbl = [0,0,0,0]
n = int(input())
for i in range(n):
    s = input().rstrip().split(' ')
    v = int(s[0])
    p = int(s[1])
    stbl[v] += p
sum = 0
for i in range(len(stbl)):
    sum += int(stbl[i]/100)*ptbl[i]
print(sum)
