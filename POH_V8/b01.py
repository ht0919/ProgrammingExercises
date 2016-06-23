tbl = ['3','4','5','6','7','8','9','10','J','Q','K','A','2']
juni = [0]*52
n = 0
cnt = 1
p = 0

# 場に置けるかチェックする関数
def check(a,b): # a:ba,b:c[n]
    r = 'NG'
    n1 = tbl.index(a)
    n2 = tbl.index(b)
    if n1 < n2:
        r = 'OK'
    return r

# カードが一人一枚配られる
c = input().rstrip().split(' ')

# 最初の人が出す処理
ba = c[n]
c[n] = '0'
juni[n] = cnt
cnt += 1
n += 1

# ２番め以降の人が出す処理
while True:

    # 全員が出し終わったら終了
    if cnt == 53:
        break

    # 抜けた人をスキップ
    if c[n] == '0':
        n += 1
        if n == 52:
            n = 0
    else:
        # 場に置けるか？
        if check(ba, c[n]) == 'OK':
            ba = c[n]
            c[n] = '0'
            juni[n] = cnt
            cnt += 1
            n += 1
            if n == 52:
                n = 0
            p = 0

        # 置けないならパス
        else:
            # パスが一周回った
            if n == p:
                ba = c[n]
                c[n] = '0'
                juni[n] = cnt
                cnt += 1
                n += 1
                if n == 52:
                    n = 0
                p = 0
            else:
                # 最初のパスなら終点（自分の次の人）を保存
                if p == 0:
                    i = n
                    while True:
                        if c[i] != '0':
                            p = i
                            break
                        i += 1
                        if i == 52:
                            i = 0
                # 場に置けないからパス
                n += 1
                if n == 52:
                    n = 0

# 順位の結果を表示
for i in range(len(juni)):
    print(juni[i])
