max = 0
min = 100
for n in range(5):
    n = int(input())
    if max < n:
        max = n
    if min > n:
        min = n
print(max)
print(min)
