s = input().rstrip().split(' ')
sum = 0
for i in range(5):
  sum += int(s[i])
s = str(sum)
print(int(s[-1]))