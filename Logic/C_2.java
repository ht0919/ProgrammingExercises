import java.util.*;
public class C_2 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    String s = sc.next();
    char before = 'b';
    int cnt = 0;
    for (int i = 0; i < s.length(); i++) {
      char c = s.charAt(i);
      // 前回と同じケース
      if (before == c) {
        cnt++;
      } else {
        if (c == 'w' && i == 0) {
          System.out.print("0 ");
          cnt++;
        } else {
          System.out.print(cnt+" ");
          cnt = 1;
        }
      }
      before = c;
    }
    // 最後の文字
    System.out.println(cnt);
  }
}
