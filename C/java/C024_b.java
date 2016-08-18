//import java.util.Arrays;
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class C024_b {
  public static void main(String[] args) throws Exception {
    int a = 0; int b = 0;
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String line = br.readLine();
    int n = Integer.parseInt(line);
    for (int i=0; i<n; i++) {
      String[] tmp = readArray(br);
//System.out.println(Arrays.toString(tmp));
      switch (tmp[0]) {
        case "SET":
          if (tmp[1].equals("1")) a = Integer.parseInt(tmp[2]);
          else                    b = Integer.parseInt(tmp[2]);
          break;
        case "ADD":
          b = a + Integer.parseInt(tmp[1]);
          break;
        case "SUB":
          b = a - Integer.parseInt(tmp[1]);
          break;
      }
    }
    System.out.println(a+" "+b);
  }
  public static String[] readArray(BufferedReader br) throws Exception {
    String line = br.readLine();
    line = line.trim();
    return line.split(" ");
  }
}
