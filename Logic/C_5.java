import java.util.*;
public class C_5 {
  public static void main(String args[] ) throws Exception {
    double max = 100.0;
    double min = 200.0;
    Scanner sc = new Scanner(System.in);
    int n = Integer.parseInt(sc.nextLine());
    for (int i = 0; i < n; i++) {
      String s = sc.nextLine();
      String[] array = s.split(" ");
      String c = array[0];
      double h = Double.parseDouble(array[1]);
      if (c.equals("ge")){
        if (max < h) max = h;
      } else {
        if (min > h) min = h;
      }
    }
    System.out.println(max+" "+min);
  }
}
