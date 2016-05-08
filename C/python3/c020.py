tmp = input().rstrip().split(' ')
m = int(tmp[0])
p = int(tmp[1])
q = int(tmp[2])
n = m * (100-p) / 100
n = n * (100-q) / 100
print(n)
