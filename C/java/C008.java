import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class C008 {
  public static void main(String[] args) throws Exception {
    // 標準入力の準備
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    // タグの文字列を入力
    String str = br.readLine();
    str = str.trim();
    String[] tmp = str.split(" ");
    String tag1 = tmp[0]; // タグ1
    String tag2 = tmp[1]; // タグ2
    // ターゲットの文字列を入力
    str = br.readLine();
    str = str.trim();
    // 正規表現（パターンマッチング）の設定
    String regex = tag1+"(.*?)"+tag2;
    Pattern p = Pattern.compile(regex);
    Matcher m = p.matcher(str);
    // ヒットした文字列を繰り返し表示
    while (m.find()) {
      if (m.group(1).isEmpty())
        System.out.println("<blank>");
      else
        System.out.println(m.group(1));
    }
  }
}
