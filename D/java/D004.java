import java.io.BufferedReader;
import java.io.InputStreamReader;
public class D004 {
    public static void main(String args[] ) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String l = br.readLine();
        l = l.trim();
        // 個数を入力
        int n = Integer.parseInt(l);
        String name = "Hello ";
        for (int i=0; i<n; i++) {
          String ll = br.readLine();
          ll = ll.trim();
          name = name + ll;
          if ((i+1)<n) {
            name = name + ",";
          } else {
            name = name + ".";
          }
        }
        System.out.println(name);
    }
}
