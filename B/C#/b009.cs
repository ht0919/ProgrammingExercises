using System;
namespace Solution {
    class Solution {
        static void Main(string[] args) {

            int[] st = new int[2] {10, 0};  // 開始時刻(時,分)
            int[] et = new int[2] {10, 0};  // 終了時刻(時,分)
        	bool lunch = false;

            string s = System.Console.ReadLine().Trim();
            int n = Int32.Parse(s);
	        for (int i=0; i<n; i++)
            {
	            // データ入力(名前 時間[分])
                string[] tmp = System.Console.ReadLine().Trim().Split(' ');
                string name = String.Copy(tmp[0]);
                int minutes = Int32.Parse(tmp[1]);

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

                System.Console.Write("{0,0:D2}:{1,0:D2} - ", st[0], st[1]);
                System.Console.Write("{0,0:D2}:{1,0:D2} "  , et[0], et[1]);
                System.Console.WriteLine("{0}", name);

                // 休憩を10分取って次の開始時刻を更新
                et[1] += 10;
                timeAdj(et);
                st[0] = et[0];
                st[1] = et[1];
            }
        }
        // 分が60以上の場合に時間を繰り上げる関数
        static void timeAdj(int[] hm)
        {
            if (hm[1] > 59)
            {
                hm[0] += hm[1] / 60;
                hm[1]  = hm[1] % 60;
            }
        }
    }
}
