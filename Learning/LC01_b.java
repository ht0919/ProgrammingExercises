// 配列版
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class LC01_b /*Main*/ {

  static String[] keytbl = new String[1000];
  static int[]    valtbl = new int[1000];
  static int      count  = 0;

  public static void main(String args[] ) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String line = br.readLine();
    line = line.trim();
    String[] tbl = line.split(" ");

    for (String name: tbl) {
      if (map_get(name) < 0) {
        map_put(name,1);
      } else {
        map_put(name, map_get(name)+1);
      }
    }
    for (int i=0; i<count; i++) {
    	System.out.println(keytbl[i]+" "+valtbl[i]);
    }
  }
  // 指定されたKeyのValueを返す(無ければ-1)
  public static int map_get(String key) {
    int ret = -1;
    for (int i=0; i<count; i++) {
      if (keytbl[i].equals(key)) ret = valtbl[i];
    }
    return ret;
  }
  // 指定されたKeyとValueを追加する(登録済ならValueを更新)
  public static void map_put(String key, int val) {
    if (map_get(key) < 0) {
      keytbl[count] = key;
      valtbl[count] = val;
      count++;
    } else {
      for (int i=0; i<count; i++) {
        if (keytbl[i].equals(key)) valtbl[i] = val;
      }
    }
  }
}
