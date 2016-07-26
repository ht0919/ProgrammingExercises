// カプセル化
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class LC01_c /*Main*/ {
  public static void main(String args[] ) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String line = br.readLine();
    line = line.trim();
    String[] tbl = line.split(" ");

    MapTbl map = new MapTbl();
    for (String name: tbl) {
      // 未登録なら追加
      if (map.get(name) < 0) map.put(name,1);
      // 登録済ならカウントアップ
      else  map.put(name, map.get(name)+1);
    }
    // 登録済のデータをリスト表示
    map.dsp();
  }
}
// マップテーブルクラス
class MapTbl {
  String[]  keytbl = new String[1000];
  int[]     valtbl = new int[1000];
  int       count  = 0;
  // 指定されたKeyのValueを返す(無ければ-1)
  int get(String key) {
    int ret = -1;
    for (int i=0; i<count; i++) {
      if (keytbl[i].equals(key)) ret = valtbl[i];
    }
    return ret;
  }
  // 指定されたKeyとValueを追加する(登録済ならValueを更新)
  void put(String key, int val) {
    if (get(key) < 0) {
      keytbl[count] = key;
      valtbl[count] = val;
      count++;
    } else {
      for (int i=0; i<count; i++) {
        if (keytbl[i].equals(key)) valtbl[i] = val;
      }
    }
  }
  // 登録済のKeyとValueをリスト表示
  void dsp() {
    for (int i=0; i<count; i++) {
    	System.out.println(keytbl[i]+" "+valtbl[i]);
    }
  }
}
