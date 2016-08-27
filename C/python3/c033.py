tbl = {'strike':0, 'ball':0}
n = int(input())
for i in range(n):
    s = input()
    tbl[s] += 1
    if s == "strike" and tbl[s] == 3:
        print("out!")
        break
    if s == "ball" and tbl[s] == 4:
        print("fourball!")
        break
    print(s+"!")
