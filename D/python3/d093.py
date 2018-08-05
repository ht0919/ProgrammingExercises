n = input().rstrip()
c = n[0]
for i in range(1,len(n)):
    if n[i] != c:
        print('No')
        exit()
print(n)