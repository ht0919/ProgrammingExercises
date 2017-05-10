import java.util.*;
public class D066 {
    public static void main(String args[] ) throws Exception {
      Scanner sc = new Scanner(System.in);
      String s = sc.nextLine();
      String[] array = s.split(" ");
      int a = Integer.parseInt(array[0]);
      int b = Integer.parseInt(array[1]);
      int c = b - a;
      if (c < 0)
        System.out.println( "No" );
      else
        System.out.println( c );
    }
}
