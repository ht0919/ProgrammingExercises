import java.util.*;
public class C_3 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    String s = sc.nextLine();
    String[] array = s.split(" ");
    int n = Integer.parseInt(array[0]);
    int m = Integer.parseInt(array[1]);
    int a = Integer.parseInt(array[2]);
    int b = Integer.parseInt(array[3]);

    for (int i = 0; i < n; i++) {
      int p = sc.nextInt();
      m += p;
      if (p < 0 && m <= a) m += b;
    }
    System.out.println(m);
  }
}
