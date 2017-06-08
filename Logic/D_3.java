import java.util.*;
public class D_3 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    int n = 0;
    for (int i=0; i<5; i++) {
      String s = sc.next();
      if (s.equals("Attack")) {
        n += 100;
      }
    }
    System.out.println(n);
  }
}
