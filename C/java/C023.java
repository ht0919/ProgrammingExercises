//import java.util.Arrays;
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class C023 {
  public static int[] parseInts(String[] s){
    int[] x = new int[s.length];
    for(int i=0; i<s.length; i++) {
      x[i] = Integer.parseInt(s[i]);
    }
    return x;
  }
  public static void main(String args[] ) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String line = br.readLine();
    String[] tmp = line.split(" ");
    int[] a = parseInts(tmp);
//System.out.println(Arrays.toString(a));
    line = br.readLine();
    int n = Integer.parseInt(line);
    for (int i=0; i<n; i++) {
      int c = 0;
      line = br.readLine();
      tmp = line.split(" ");
      int[] b = parseInts(tmp);
//System.out.println(Arrays.toString(b));
      for (int j: b) {
        for (int k: a) { if (j == k) c++; }
      }
      System.out.println(c);
    }
  }
}
