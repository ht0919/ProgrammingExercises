#include <stdio.h>

// 分が60以上の場合に時間を繰り上げる関数
void timeAdj(int *hm) {
    if (hm[1] > 59) {
        hm[0] += hm[1] / 60;
        hm[1]  = hm[1] % 60;
    }
}

int main() {

	int st[2] = {10,0}; // 開始時刻(時,分)
	int et[2] = {10,0}; // 終了時刻(時,分)
	int lunch = 0, minutes = 0;
    char name[12],str[100];
    int i,n;

    scanf("%d", &n);
	for (i=0; i<n; i++) {

	    // データ入力(名前 時間[分])
        scanf("%s", name);
        scanf("%d", &minutes);

	    // 終了時刻の設定
	    et[0] = st[0];
	    et[1] = st[1] + minutes;
	    timeAdj(et);

	    // 終了時刻が12:01以降なら昼休みを取る
	    if (lunch == 0 && et[0] >= 12 && et[1] >= 1) {
	        // 開始時刻の更新
	        st[1] += 50; // すでに10分休憩しているので50分を足す
	        timeAdj(st);
	        // 終了時刻の更新
	        et[0] = st[0];
	        et[1] = st[1] + minutes;
	        timeAdj(et);
	        lunch = 1; // 昼休みは1回だけなのでフラグをONにする
	    }

	    printf("%02d:%02d - %02d:%02d %s\n",st[0],st[1],et[0],et[1],name);

	    // 休憩を10分取って次の開始時刻を更新
	    et[1] += 10;
	    timeAdj(et);
	    st[0] = et[0];
	    st[1] = et[1];
	}
    return 0;
}
