import java.util.*;

public class D084 {
  public static void main(String args[] ) throws Exception {
    String[] month = {
      "January", "February", "March", "April",
      "May", "June", "July", "August", "September",
      "October", "November", "December"
    };

    Scanner sc = new Scanner(System.in);
    int m = sc.nextInt();
    System.out.println(month[m-1]);
  }
}
