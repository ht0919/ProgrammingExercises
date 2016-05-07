M = int(input()) # 1回に運べる枚数
N = int(input()) # FAXが届く回数
first = True
cnt = 0
for i in range(N):
    tmp = input().rstrip().split(' ')
    x = int(tmp[0]) #時
    y = int(tmp[1]) #分
    c = int(tmp[2]) #枚数
    if first == True:
        # 最初のケース
        h = x
        p = c
        first = False
    else:
        # 2回め以降のケース
        if h == x:
            # 同じ時間帯
            p += c
        else:
            # 時間帯が変わったケース
            # 前時間帯の集計処理
            cnt += int(p / M)
            if p % M != 0:
                cnt += 1
            # 変数のリセット
            h = x
            p = c
# 未集計データ処理
cnt += int(p / M)
if p % M != 0:
    cnt += 1
print(cnt)
