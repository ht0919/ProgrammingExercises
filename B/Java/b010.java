import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;
public class /*Main*/ b010 {
    public static void main(String args[] ) throws Exception {

        int[] XA = new int[11];
        int[] XB = new int[11];
        String T;
        int U;

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String tmp = br.readLine();
        tmp = tmp.trim();
        String[] tmpArray = tmp.split(" ");
        T = tmpArray[0];
        U = Integer.parseInt(tmpArray[1]);

        tmp = br.readLine();
        tmp = tmp.trim();
        tmpArray = tmp.split(" ");
        for (int i=0; i<tmpArray.length; i++) {
            XA[i] = Integer.parseInt(tmpArray[i]);
        }

        tmp = br.readLine();
        tmp = tmp.trim();
        tmpArray = tmp.split(" ");
        for (int i=0; i<tmpArray.length; i++) {
            XB[i] = Integer.parseInt(tmpArray[i]);
        }

        if (T.equals("A")) {
            boolean flg = false;
            int num = 1;
            int pass = XA[U-1];
            Arrays.sort(XB);
            int b = XB[9];
            for (int a: XA) {
                if (a>=55 && a>b && a>pass) {
                    System.out.println(num);
                    flg = true;
                }
                num += 1;
            }
            if (flg == false) { System.out.println("None"); }
        } else {
            boolean flg = false;
            int num = 1;
            int pass = XB[U-1];
            Arrays.sort(XA);
            int a = XA[1];
            for (int b: XB) {
                if (b<=55 && b<a && b<pass) {
                    System.out.println(num);
                    flg = true;
                }
                num += 1;
            }
            if (flg == false) { System.out.println("None"); }
        }
    }
}
