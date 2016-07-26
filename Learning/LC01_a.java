// LinkedHashMap版
import java.util.*;
import java.io.BufferedReader;
import java.io.InputStreamReader;
public class LC01_a /*Main*/ {
  public static void main(String args[] ) throws Exception {
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String line = br.readLine();
    line = line.trim();
    String[] tbl = line.split(" ");
    Map<String,Integer> map = new LinkedHashMap<String,Integer>();
    for (String name: tbl) {
      if (map.get(name) == null) {
        map.put(name,1);
      } else {
        map.put(name, map.get(name)+1);
      }
    }
    for (String key: map.keySet()) {
    	System.out.println(key+" "+map.get(key));
    }
  }
}
