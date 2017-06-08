import java.util.*;
public class D_4 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    String s = sc.next();
    int    n = sc.nextInt();
    for (int i = 0; i < s.length(); i++) {
      char c = s.charAt(i);
      if (c == '1') n--;
    }
    if (n > 0)  System.out.println(n);
    else        System.out.println("No");
  }
}
