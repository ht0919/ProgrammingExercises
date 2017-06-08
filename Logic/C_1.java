import java.util.*;
public class C_1 {
  public static void main(String args[] ) throws Exception {
    LinkedList<Integer> array = new LinkedList<Integer>();
    Scanner sc = new Scanner(System.in);
    int N = sc.nextInt();
    String s = sc.next();
    for (int i = 0; i < N; i++) {
      char c = s.charAt(i);
      switch (c) {
        case 'R': array.addLast(i+1); break;
        case 'L': array.addFirst(i+1); break;
      }
    }
    for (int i = 0 ; i < array.size() ; i++){
      int n = array.get(i);
      System.out.print(n);
      if (i < array.size()-1)
        System.out.print(' ');
      else
        System.out.println();
    }
  }
}
