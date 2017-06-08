import java.util.*;
public class C_4 {
  public static void main(String args[] ) throws Exception {
    Map<Integer, String> map = new HashMap<Integer, String>();
    Scanner sc = new Scanner(System.in);
    int n = Integer.parseInt(sc.nextLine());
    for (int i = 0; i < n; i++) {
      String s = sc.nextLine();
      String[] array = s.split(" ");
      int k = Integer.parseInt(array[0]);
      String v = array[1];
      if (map.containsKey(k)){
        String t = map.get(k);
        t = t + v;
        map.put(k, t);
      } else {
        map.put(k, v);
      }
    }

    Object[] mapkey = map.keySet().toArray();
    Arrays.sort(mapkey);
    for (Integer key : map.keySet()) {
      System.out.println(key + " " + map.get(key));
    }
  }
}
