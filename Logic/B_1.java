import java.util.*;
public class B_1 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    int n = Integer.parseInt(sc.nextLine());
    int magic[][] = new int[n][n];
    List<List<Integer>> zeroList = new ArrayList<List<Integer>>();
    for (int i=0; i<n; i++) {
      String s = sc.nextLine();
      String[] array = s.split("\\s+");
      for (int j=0; j<n; j++) {
        int tmp = Integer.parseInt(array[j]);
        magic[i][j] = tmp;
        if (tmp == 0) {
          List<Integer> list = new ArrayList<Integer>();
          list.add(i);
          list.add(j);
          zeroList.add(list);
        }
      }
    }

    int total = 0;
    for (int i=0; i<n; i++) {
      total = 0;
      boolean flg = true;
      for (int j=0; j<n; j++) {
        if (magic[i][j] == 0) flg = false;
        else total += magic[i][j];
      }
      if (flg == true) break;
    }

    for (List<Integer> list : zeroList) {
      int low = list.get(0);
      int col = list.get(1);
      int cnt = 0;
      int sum = 0;
      for (int i=0; i<n; i++) {
        int tmp = magic[low][i];
        if (tmp == 0) cnt++;
        sum += tmp;
      }
      if (cnt == 1) {
        magic[low][col] = total - sum;
      } else {
        sum = 0;
        for (int i=0; i<n; i++) {
          sum += magic[i][col];
        }
        magic[low][col] = total - sum;
      }
    }

    for (int i=0; i<n; i++) {
      for (int j=0; j<n; j++) {
        System.out.print(magic[i][j]);
        if (j < n-1) System.out.print(' ');
        else System.out.println();
      }
    }
  }
}
