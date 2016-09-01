s = input().rstrip().split(' ')
m = int(s[0])
n = int(s[1])
k = int(s[2])
a = {}
# 辞書の初期化
for i in range(m):
    a[i+1] = 0
# 演説による有権者の移動
for i in range(k):
    t = int(input())
    for j in range(m):
        # 自分自身をスキップ
        if j+1 == t:
            continue
        # 自分以外の候補者から一人ずつ移動
        if a[j+1] > 0:
            a[j+1] -= 1
            a[t]   += 1
    # 無支持者から一人移動
    if n > 0:
        n -= 1
        a[t] += 1
# もっとも支持が多い立候補者を選出
k = 0
v = 0
for i in range(m):
    if v < a[i+1]:
        k = i+1
        v = a[i+1]
# 同じ支持数を持つ候補者を検索
b = [k]
for i in range(m):
    if v == a[i+1] and b[0] != i+1:
        b.append(i+1)
# 小さい順に並べ替えて一人ずつ表示
b.sort()
for s in b:
    print(s)
