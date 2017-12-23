import java.util.*;

public class C035 {
  public static void main(String args[] ) throws Exception {
    int cnt = 0;
    Scanner sc = new Scanner(System.in);
    int n = Integer.parseInt(sc.nextLine());

    for (int i=0; i < n; i++) {
      String s = sc.nextLine();
      String[] array = s.split(" ");
      int[] score = new int[5];
      int sum = 0;

      for (int j=0; j < score.length; j++) {
        score[j] = Integer.parseInt(array[j+1]);
        sum += score[j];
      }
      if (sum >= 350) {
        if (array[0].equals("s")) {
          if ((score[1]+score[2]) >= 160 ) {
            cnt++;
          }
        } else {
          if ((score[3]+score[4]) >= 160 ) {
            cnt++;
          }
        }
      }
    }
    System.out.println(cnt);
  }
}
