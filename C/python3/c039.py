E = input().rstrip().split('+')
sum = 0
for s in E:
    sl = list(s)
    for n in sl:
        if n == '<':
            sum += 10
        elif n == '/':
            sum += 1
print(sum)
