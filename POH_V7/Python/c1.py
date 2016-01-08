n = int(input())
m = int(input())
x = [ int(i) for i in input().split() ]
m = int(input())
y = [ int(i) for i in input().split() ]
buy = [ i for i in y if i not in x ]
if len(buy) == 0:
    print("None")
else:
    buy.sort()
    for n in buy:
        if n != buy[0]:
            print(" ",end="")
        print(n,end="")
    print("")
