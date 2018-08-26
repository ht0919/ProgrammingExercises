N = int(input())
G = input().rstrip()
flg = True
for i in range(N):
    S = input().rstrip()
    if S.find(G) >= 0:
        print(S)
        flg = False
    
if flg:
    print('None')
