Q = int(input())
for i in range(Q):
    N = int(input())
    a = []
    for j in range(N):
        if N % (j+1) == 0:
            a.append(j+1)
    S = sum(a)-N
    if N == S:
        print("perfect")
    elif abs(N-S) == 1:
        print("nearly")
    else:
        print("neither")
