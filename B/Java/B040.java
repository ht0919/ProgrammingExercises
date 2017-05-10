import java.util.*;
public class B040 {
    public static void main(String args[] ) throws Exception {

      final String ALPHABET= "abcdefghijklmnopqrstuvwxyz";
      Scanner sc = new Scanner(System.in);
      String s = sc.nextLine();
      String[] array = s.split(" ");
      int n = Integer.parseInt(array[0]);
      String t = array[1];
      s = sc.nextLine();

      StringBuilder alphabet = new StringBuilder(ALPHABET);
      StringBuilder code     = new StringBuilder(t);
      StringBuilder in_msg   = new StringBuilder(s);
      StringBuilder out_msg  = new StringBuilder(s);

      for (;n > 0; n--) {
        out_msg.delete(0, out_msg.length());
        for (int i=0; i < s.length(); i++) {
          String tmp1 = in_msg.substring(i, i+1);
          if (tmp1.equals(" ")) {
            out_msg.append(" ");
          } else {
            int p = code.indexOf(tmp1);
            String tmp2 = alphabet.substring(p, p+1);
            out_msg.append(tmp2);
          }
        }
        in_msg = new StringBuilder(out_msg);
      }
      System.out.println( out_msg );
    }
}
