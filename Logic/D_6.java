import java.util.*;
public class D_6 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    String s = sc.nextLine();
    String[] array = s.split(" ");
    int a = Integer.parseInt(array[0]);
    int b = Integer.parseInt(array[1]);
    System.out.println(a*b);
  }
}
