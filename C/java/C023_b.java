//import java.util.Arrays;
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class C023_b {
  public static void main(String args[] ) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    int[] a = parseInts(readArray(br));
//System.out.println(Arrays.toString(a));
    String line = br.readLine();
    int n = Integer.parseInt(line);
    for (int i=0; i<n; i++) {
      int c = 0;
      int[] b = parseInts(readArray(br));
//System.out.println(Arrays.toString(b));
      for (int j: b) {
        for (int k: a) { if (j == k) c++; }
      }
      System.out.println(c);
    }
  }
  public static String[] readArray(BufferedReader br) throws Exception {
    String line = br.readLine();
    line = line.trim();
    return line.split(" ");
  }
  public static int[] parseInts(String[] s) {
    int[] x = new int[s.length];
    for (int i=0; i<s.length; i++) {
      x[i] = Integer.parseInt(s[i]);
    }
    return x;
  }
}
