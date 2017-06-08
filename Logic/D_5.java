import java.util.*;
public class D_5 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    String s = sc.nextLine();
    String[] array = s.split(" ");
    int a = Integer.parseInt(array[0]);
    int b = Integer.parseInt(array[1]);
    s = sc.nextLine();
    array = s.split(" ");
    int c = Integer.parseInt(array[0]);
    int d = Integer.parseInt(array[1]);
    if ((double)a/b > (double)c/d) {
      System.out.println(b);
    } else {
      System.out.println(d);
    }
  }
}
