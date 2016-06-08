s = int(input())
t = int(input())
for i in range(s):
    if i == t-1:
        print("+", end="")
    else:
        print("-", end="")
print()
