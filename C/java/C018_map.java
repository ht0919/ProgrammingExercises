import java.util.HashMap;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class C018_map {
  public static void main(String[] args) throws Exception {
    // 標準入力の準備
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    // レシピの個数を入力
    String str = br.readLine(); str = str.trim();
    int n = Integer.parseInt(str);
    // レシピのデータを入力
    HashMap<String,Integer> recipes = new HashMap<String,Integer>();
    for (int i=0; i<n; i++) {
      String s = br.readLine(); s = s.trim();
      String[] t = s.split(" ");
      recipes.put(t[0], Integer.parseInt(t[1]));
    }
    // 所有している食材の個数を入力
    str = br.readLine(); str = str.trim();
    n = Integer.parseInt(str);
    // 所有している食材のデータを入力
    HashMap<String,Integer> foods = new HashMap<String,Integer>();
    for (int i=0; i<n; i++) {
      String s = br.readLine(); s = s.trim();
      String[] t = s.split(" ");
      foods.put(t[0], Integer.parseInt(t[1]));
    }
    // 所有している食材で作れる量の計算
    int cnt = 0;
    boolean flg = true;
    do {
      // レシピの食材を一つずつ取り出してチェックする
      for(HashMap.Entry<String, Integer> e : recipes.entrySet()) {
        String key = e.getKey();
        int value = e.getValue();
        // レシピの食材を所有していないか、量が少ない場合が中断
        if ( foods.containsKey(key) == false || foods.get(key) < value ) {
          flg = false;
          break;
        }
        // 食材の量を引いて更新する
        int tmp = foods.get(key);
        tmp -= value;
        foods.put(key, tmp);
      }
      // 人数をカウントアップ
      if (flg) cnt++;
    } while (flg);
    System.out.println(cnt);
  }
}
