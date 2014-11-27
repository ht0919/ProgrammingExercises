import java.io.BufferedReader;
import java.io.InputStreamReader;

public class /*Main*/ b008 {
    public static void main(String args[] ) throws Exception {
        int max = 0;
        int[] incom = new int[1000];

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String tmp = br.readLine();
        String[] tmpArray = tmp.split(" ");
        int N = Integer.parseInt(tmpArray[0]);
        int M = Integer.parseInt(tmpArray[1]);

        if (M>0 && N>0) {
            for (int i=0; i<M; i++) {
                tmp = br.readLine();
                tmpArray = tmp.split(" ");
                int sum = 0;
                for (String n: tmpArray) {
                    sum += Integer.parseInt(n);
                }
                incom[i] = sum;
            }
            for (int n: incom) {
                if (n>0) {
                    max += n;
                }
            }
        }
        System.out.println(max);
    }
}
