import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

public class learn05 {
    public static void main(String args[] ) throws Exception {

		Island	b = new Island();
		b.setBoard();	//b.dspBoard();
		b.labeling();	//b.dspBoard();
		b.catBoard();	//b.dspBoard();
		b.getBoard();
    }
}

class Island {

	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	int		col;
	int		row;
	int[][]	board;

	Island() throws Exception {
		String s = br.readLine();
        s = s.trim();
        String[] sa = s.split(" ");
		col = Integer.parseInt(sa[0]);
		row = Integer.parseInt(sa[1]);
        board = new int[row][col];
	}

    void dspBoard() {
		System.out.println("row:"+row);
		System.out.println("col:"+col);
		for (int i=0; i<row; i++) {
			for (int j=0; j<col; j++) {
                System.out.print(" "+board[i][j]);
            }
			System.out.println();
        }
    }

    void setBoard() throws Exception {
		for (int i=0; i<row; i++) {
			String s = br.readLine();
        	s = s.trim();
        	String[] sa = s.split(" ");
			for (int j=0; j<col; j++) {
                board[i][j] = Integer.parseInt(sa[j]);
            }
        }
    }

    void labeling() {
        int label = 2;
		ArrayList<Integer> list = new ArrayList<Integer>();
		int[][] arrays = {{0,-1},{-1,0}};
        int x,y;
		for (int i=0; i<row; i++) {
			for (int j=0; j<col; j++) {
                if (board[i][j] == 1) {
                    list.clear();
					for (int[] pos : arrays ) {
						x = pos[0];
						y = pos[1];
						if ( (i+y)<0 || (j+x)<0 )
							continue;
                    	if (board[i+y][j+x] > 1) {
                    		list.add( board[i+y][j+x] );
                    	}
                	}
					if (list.size() == 0) {
                        board[i][j] = label;
                        label += 1;
                    } else {
                        board[i][j] = Collections.min(list);
                	}
            	}
        	}
    	}
    }

    boolean cat_x() {
        boolean flg = false;
		ArrayList<Integer> list = new ArrayList<Integer>();
        int k,min;
		for (int i=0; i<row; i++) {
			for (int j=0; j<col; j++) {
                // ‰¡•ûŒü‚Ì˜AŒ‹
                if (board[i][j] > 1) {
                    list.clear();
                    k = j;
                    while (k < col && board[i][k] > 1) {
						list.add( board[i][k] );
                        k += 1;
                    }
                    k = j;
                    min = Collections.min(list);
                    while (k < col && board[i][k] > 1) {
                        if (board[i][k] != min) {
                            board[i][k] = min;
                            flg = true;
                        }
                        k += 1;
                    }
                    if (k < col ) {
                        j = k;
                    } else {
                        j = col;
                    }
                }
            }
        }
        return flg;
    }
    
    boolean cat_y() {
        boolean flg = false;
		ArrayList<Integer> list = new ArrayList<Integer>();
        int k,min;
		for (int j=0; j<col; j++) {
			for (int i=0; i<row; i++) {
                // c•ûŒü‚Ì˜AŒ‹
                if (board[i][j] > 1) {
                    list.clear();
                    k = i;
                    while (k < row && board[k][j] > 1) {
						list.add( board[k][j] );
                        k += 1;
                    }
                    k = i;
                    min = Collections.min(list);
                    while (k < row && board[k][j] > 1) {
                        if (board[k][j] != min) {
							board[k][j] = min;
                            flg = true;
                        }
                        k += 1;
                    }
                    if (k < row) {
                        i = k;
                    } else {
                        i = row;
                    }
                }
            }
        }
        return flg;
    }

    void catBoard() {
        while (true) {
            boolean flg_x = cat_x();
            boolean flg_y = cat_y();
            if (flg_x == false && flg_y == false) {
                break;
            }
        }
    }

    void getBoard() {
		HashMap<Integer,Integer> hash = new HashMap<Integer,Integer>();
		for (int i=0; i<row; i++) {
			for (int j=0; j<col; j++) {
                if (board[i][j] != 0) {
                    if (!hash.containsKey(board[i][j])) {
                        hash.put(board[i][j],1);
                    }
                }
            }
        }
		System.out.println(hash.size());
    }
}
