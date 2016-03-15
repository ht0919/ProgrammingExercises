max = 0
incom = []
s = input().rstrip().split(' ')
N = int(s[0])
M = int(s[1])
if M>0 and N>0 :
    for i in range(M):
        e = input().rstrip().split(' ')
        sum = 0
        for n in e:
            sum += int(n)
        incom.append(sum)
    for n in incom:
        if n>0:
            max += n
print(max)
