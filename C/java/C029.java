import java.io.BufferedReader;
import java.io.InputStreamReader;
public class C029 {
  public static void main(String[] args) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String[] s = readArray(br);
    int m = Integer.parseInt(s[0]);
    int n = Integer.parseInt(s[1]);
    int[] a1 = new int[m];
    int[] b1 = new int[m];
    // 日程データの取り込み
    for (int i=0; i<m; i++) {
      s = readArray(br);
      a1[i] = Integer.parseInt(s[0]);
      b1[i] = Integer.parseInt(s[1]);
    }
    //  旅行日ごとの降雨率の集計
    int[] b2 = new int[m-n+1];
    for (int i=0; i<b2.length; i++) {
      int sum = 0;
      for (int j=0; j<n; j++) {
        sum += b1[i+j];
      }
      b2[i] = sum;
    }
    // 最少降雨量日の日付を取得
    int min = b2[0];
    int day = a1[0];
    for (int i=0; i<b2.length; i++) {
      if (min>b2[i]) {
        min = b2[i];
        day = a1[i];
      }
    }
    // 最少降雨量の旅行日を表示（開始と終了）
    System.out.println(day+" "+(day+n-1));
  }
  public static String[] readArray(BufferedReader br) throws Exception {
    String line = br.readLine();
    line = line.trim();
    return line.split(" ");
  }
}
