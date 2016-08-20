import java.io.BufferedReader;
import java.io.InputStreamReader;

public class C018 {
  public static void main(String[] args) throws Exception {
    // 標準入力の準備
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    // レシピの個数を入力
    String str = br.readLine(); str = str.trim();
    int n = Integer.parseInt(str);
    // レシピのデータを入力
    String[] a = new String[n]; // 食材の名前
    int[]    b = new int[n];    // 食材の個数
    for (int i=0; i<n; i++) {
      String s = br.readLine(); s = s.trim();
      String[] t = s.split(" ");
      a[i] = t[0];
      b[i] = Integer.parseInt(t[1]);
    }
    // 所有している食材の個数を入力
    str = br.readLine(); str = str.trim();
    n = Integer.parseInt(str);
    // 所有している食材のデータを入力
    String[] c = new String[n]; // 食材の名前
    int[]    d = new int[n];    // 食材の個数
    for (int i=0; i<n; i++) {
      String s = br.readLine(); s = s.trim();
      String[] t = s.split(" ");
      c[i] = t[0];
      d[i] = Integer.parseInt(t[1]);
    }
    // 所有している食材で作れる量の計算
    int cnt = 0;
    boolean flg = false;
    do {
      for (int i=0; i<a.length; i++) {
        flg = false;
        for (int j=0; j<c.length; j++) {
          // レシピの食材を所有し、かつ量も足りている
          if (a[i].equals(c[j]) && d[j] >= b[i]) {
            d[j] -= b[i];
            flg = true;
            break;
          }
        }
        // レシピの食材を所有しないか、量が足りていない場合は中断
        if (flg == false) break;
      }
      // すべてのレシピを所有していた場合はカウントアップ
      if (flg) cnt++;
    } while (flg);
    System.out.println(cnt);
  }
}
