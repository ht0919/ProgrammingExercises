//import java.util.Arrays;
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class C023_a {
  public static void main(String[] args) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String[] a = readArray(br);
//System.out.println(Arrays.toString(a));
    String line = br.readLine();
    int n = Integer.parseInt(line);
    for (int i=0; i<n; i++) {
      int c = 0;
      String[] b = readArray(br);
//System.out.println(Arrays.toString(b));
      for (int j=0; j<b.length; j++) {
        for (int k=0; k<a.length; k++) {
          if (b[j].equals(a[k])) {
            c++;
            break;
          }
        }
      }
      System.out.println(c);
    }
  }
  public static String[] readArray(BufferedReader br) throws Exception {
    String line = br.readLine();
    line = line.trim();
    return line.split(" ");
  }
}
