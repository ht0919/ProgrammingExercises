# 分が60以上の場合に時間を繰り上げるメソッド
sub timeAdj {
    my @hm = @_;
    if ($hm[1] > 59) {
        $hm[0] += int ($hm[1] / 60);
        $hm[1]  = $hm[1] % 60;
    }
    return @hm;
}

@st = (10,0); # 開始時刻(時,分)
@et = (10,0); # 終了時刻(時,分)
$lunch = 0;
my $n = <STDIN>;
for ($i=0; $i<$n; $i++) {

    # データ入力(名前 時間[分])
    my $s = <STDIN>;
    chomp($s);
    @s = split(/ /,$s);
    $name    = $s[0];
    $minutes = $s[1];

    # 終了時刻の設定
    $et[0] = $st[0];
    $et[1] = $st[1] + $minutes;
    @et = &timeAdj(@et);

    # 終了時刻が12:01以降なら昼休みを取る
    if ($lunch == 0 && $et[0] >= 12 && $et[1] >= 1) {
        # 開始時刻の更新
        $st[1] += 50; # すでに10分休憩しているので50分を足す
        @st = &timeAdj(@st);
        # 終了時刻の更新
        $et[0] = $st[0];
        $et[1] = $st[1] + $minutes;
        @et = &timeAdj(@et);
        $lunch = 1; # 昼休みは1回だけなのでフラグをONにする
    }
    
    printf("%02d:%02d - %02d:%02d %s\n",$st[0],$st[1],$et[0],$et[1],$name);

    # 休憩を10分取って次の開始時刻を更新
    $et[1] += 10;
    @et = &timeAdj(@et);
    $st[0] = $et[0];
    $st[1] = $et[1];
}
