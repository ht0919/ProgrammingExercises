A = 0
B = 0
n = int(input())
for i in range(n):
    tmp = input().rstrip().split(' ')
    s = tmp[0] #命令
    if s == "SET":
        if tmp[1] == "1":
            A = int(tmp[2])
        else:
            B = int(tmp[2])
    elif s == "ADD":
        B = A + int(tmp[1])
    elif s == "SUB":
        B = A - int(tmp[1])
print("{0} {1}".format(A,B))
