process.stdin.resume();
process.stdin.setEncoding('utf8');
process.stdin.on('data', function (chunk) {

    var st = [10, 0];  // 開始時刻(時,分)
    var et = [10, 0];  // 終了時刻(時,分)
    var lunch = false;

    var lines = chunk.toString().split('\n');
    var n = Number(lines[0]);

    for (var i=0; i<n; i++) {
	    // データ入力(名前 時間[分])
        var tmp = lines[i+1].replace(/(^\s+)|(\s+$)/g, "").split(" ");
        var name = tmp[0];
        var minutes = Number(tmp[1]);

        // 終了時刻の設定
        et[0] = st[0];
        et[1] = st[1] + minutes;
        timeAdj(et);

        // 終了時刻が12:01以降なら昼休みを取る
        if (lunch == false && et[0] >= 12 && et[1] >= 1)
        {
            // 開始時刻の更新
            st[1] += 50; // すでに10分休憩しているので50分を足す
            timeAdj(st);
            // 終了時刻の更新
            et[0] = st[0];
            et[1] = st[1] + minutes;
            timeAdj(et);
            lunch = true; // 昼休みは1回だけなのでフラグをONにする
        }

        console.log(
                ("0"+st[0]).slice(-2)+":"+("0"+st[1]).slice(-2)+" - "+
                ("0"+et[0]).slice(-2)+":"+("0"+et[1]).slice(-2)+" "+name);

        // 休憩を10分取って次の開始時刻を更新
        et[1] += 10;
        timeAdj(et);
        st[0] = et[0];
        st[1] = et[1];
    }
});
// 分が60以上の場合に時間を繰り上げる関数
function timeAdj(hm) {
    if (hm[1] > 59) {
        hm[0] += Math.floor(hm[1] / 60);
        hm[1]  = hm[1] % 60;
    }
}
