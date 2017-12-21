import java.util.*;

public class C034 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    String s = sc.nextLine();
    String[] array = s.split(" ");
    if (array[0].equals("x")) {
      int b = Integer.parseInt(array[2]);
      int c = Integer.parseInt(array[4]);
      if (array[1].equals("+")) {
        System.out.println(c - b);
      } else {
        System.out.println(c + b);
      }
    } else if (array[2].equals("x")) {
      int a = Integer.parseInt(array[0]);
      int c = Integer.parseInt(array[4]);
      if (array[1].equals("+")) {
        System.out.println(c - a);
      } else {
        System.out.println(a - c);
      }
    } else if (array[4].equals("x")) {
      int a = Integer.parseInt(array[0]);
      int b = Integer.parseInt(array[2]);
      if (array[1].equals("+")) {
        System.out.println(a + b);
      } else {
        System.out.println(a - b);
      }
    }
  }
}
