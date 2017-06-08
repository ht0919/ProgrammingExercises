import java.util.*;
public class S_1 {
  public static void main(String args[] ) throws Exception {
    Scanner sc = new Scanner(System.in);
    String t = sc.nextLine();
    String[] a = t.split(" ");
    int w = Integer.parseInt(a[0]);
    int h = Integer.parseInt(a[1]);
    int n = Integer.parseInt(a[2]);
    int[][] tbl = new int[h][w];

    // 入力データを２次元の配列に格納
    for (int i = 0; i<h; i++) {
      String s = sc.nextLine();
      String[] stb = s.split("");
      for (int j=0; j<stb.length; j++) {
        if (stb[j].equals("R")) tbl[i][j]=1;
        if (stb[j].equals("G")) tbl[i][j]=2;
        if (stb[j].equals("B")) tbl[i][j]=3;
      }
    }

    // 配列の内容をすべて表示(デバッグ用)
    for (int i = 0; i<tbl.length; i++) {
      for (int j=0; j<tbl[i].length; j++) {
        System.out.print(tbl[i][j]+" ");
      }
      System.out.println();
    }



    int cnt = 0;
    int[] pos = {0,0};
    List<List<Integer>> array = new ArrayList<List<Integer>>();
    // モノケシの呪文を実行
    for (int i = 0; i < n; i++) {
      // 探索
      if (search(tbl, pos) == 0)  break;
      // モノケシ実行
      monokeshi(tbl, pos);
      List<Integer> list = new ArrayList<Integer>();
      list.add(pos[0]);
      list.add(pos[1]);
      array.add(list);
      cnt++;
      // ドロップ
      drop(tbl);
      // 配列の内容をすべて表示(デバッグ用)
      for (int[] ss : tbl) System.out.println(Arrays.toString(ss));
      System.out.println();
    }

    // 結果の表示
    System.out.println(cnt);
    for (int i=0 ; i<array.size() ;i++){
      List<Integer> list = array.get(i);
      System.out.println(list.get(0)+" "+list.get(1));
    }
  }
  // 削除できる個数と場所を返す
  static int search(int[][] tbl, int[] pos) {
    int x = 0; int y = 0;
    // 0スキップ
    boolean flg = false;
    for (int i=0; i<tbl.length && flg == false; i++) {
      for (int j=0; j<tbl[i].length && flg == false; j++) {
        if (tbl[i][j] != 0) {
          pos[0] = i;
          pos[1] = j;
          flg = true;
        }
      }
    }
    if (flg) return check(tbl, pos);
    else return 0;
  }
  // 指定した座標から削除できる個数を返す
  static int check(int[][] tbl, int[] pos) {
    System.out.println("x="+tbl[0].length+" y="+tbl.length);
    int x = 0; int y = 0; int cnt = 1;
    // 個数カウント
    int color = tbl[pos[0]][pos[1]];
    // left
    x=pos[1]; y=pos[0]; x--;
    while (x >= 0 && tbl[y][x] == color) { cnt++; x--; }
    // right
    x=pos[1]; y=pos[0]; x++;
    while (x < tbl[0].length && tbl[y][x] == color) { cnt++; x++; }
    // up
    x=pos[1]; y=pos[0]; y--;
    while (y >= 0 && tbl[y][x] == color) { cnt++; y--; }
    // down
    x=pos[1]; y=pos[0]; y++;
    while (y < tbl.length && tbl[y][x] == color) { cnt++; y++; }
    // Finished
    return cnt;
  }
  // 指定した座標から削除する
  static void monokeshi(int[][] tbl, int[] pos) {
    int x = 0; int y = 0; int cnt = 0;
    // 個数カウント
    int color = tbl[pos[0]][pos[1]];
    // left
    x=pos[1]; y=pos[0]; x--;
    while (x >= 0 && tbl[y][x] == color) { tbl[y][x]=0; x--; }
    // right
    x=pos[1]; y=pos[0]; x++;
    while (x < tbl[0].length && tbl[y][x] == color) { tbl[y][x]=0; x++; }
    // up
    x=pos[1]; y=pos[0]; y--;
    while (y >= 0 && tbl[y][x] == color) { tbl[y][x]=0; y--; }
    // down
    x=pos[1]; y=pos[0]; y++;
    while (y < tbl.length && tbl[y][x] == color) { tbl[y][x]=0; y++; }
    // Finished
    tbl[pos[0]][pos[1]] = 0;
  }
  // 下に空間がある場合はドロップする
  static void drop(int[][] tbl) {
  }
}
