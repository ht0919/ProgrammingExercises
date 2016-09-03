import java.io.BufferedReader;
import java.io.InputStreamReader;
public class C025 {
  public static void main(String[] args) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String line = br.readLine();
    int m = Integer.parseInt(line); // 1回に運べる枚数
    line = br.readLine();
    int n = Integer.parseInt(line); // FAXが届く回数
    boolean first = true;
    int cnt = 0, h = 0, p = 0;
    for (int i=0; i<n; i++) {
      line = br.readLine(); line = line.trim();
      String[] tmp = line.split(" ");
      int x = Integer.parseInt(tmp[0]);  // 時
      int y = Integer.parseInt(tmp[1]);  // 分
      int c = Integer.parseInt(tmp[2]);  // 枚数
      if (first == true) {  // 最初のケース
        h = x; p = c; first = false;
      } else {  // 2回め以降のケース
        if (h == x) { // 同じ時間帯
          p += c;
        } else {  // 時間帯が変わったケース
          // 前時間帯の集計処理
          cnt += p / m;
          if (p % m != 0) cnt++;
          // 変数のリセット
          h = x; p = c;
        }
      }
    }
    // 未集計データ処理
    cnt += p / m;
    if (p % m != 0) cnt++;
    System.out.println(cnt);
  }
}
