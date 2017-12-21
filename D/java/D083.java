import java.util.*;

public class D083 {
    public static void main(String args[] ) throws Exception {
        Scanner sc = new Scanner(System.in);
        String s = sc.nextLine();
        String[] array = s.split(" ");
        int A = Integer.parseInt(array[0]);
        int B = Integer.parseInt(array[1]);

        if (A+B<16) {
          System.out.println("HIT");
        } else {
          System.out.println("STAND");
        }
    }
}
