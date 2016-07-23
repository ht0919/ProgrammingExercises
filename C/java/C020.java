import java.text.DecimalFormat;
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class C020 {
    public static void main(String args[] ) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String readLine = br.readLine();
        readLine = readLine.trim();
        String[] tmp = readLine.split(" ");

        int m = Integer.parseInt(tmp[0]);
        int p = Integer.parseInt(tmp[1]);
        int q = Integer.parseInt(tmp[2]);

        double n = (double)m * (100-p) / 100;
        n = n * (100-q) / 100;

        DecimalFormat df = new DecimalFormat("#.####");
        System.out.println(df.format(n));
    }
}
