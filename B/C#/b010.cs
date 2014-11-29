using System;
namespace Solution {
    class Solution {
        static void Main(string[] args) {

            const int center = 55;
            const int eleven = 11;
            int[] XA = new int[eleven];
            int[] XB = new int[eleven];

            string[] tmp = System.Console.ReadLine().Trim().Split(' ');
            string T = String.Copy(tmp[0]);
            int    U = Int32.Parse(tmp[1]);

            tmp = System.Console.ReadLine().Trim().Split(' ');
            for (int i=0; i<eleven; i++) { XA[i] = Int32.Parse(tmp[i]); }
            tmp = System.Console.ReadLine().Trim().Split(' ');
            for (int i=0; i<eleven; i++) { XB[i] = Int32.Parse(tmp[i]); }

            if (T == "A")
            {
                Array.Sort(XB);
                int b = XB[9];
                int pass = XA[U-1];
                int num = 1;
                bool flg = false;
                for (int i=0; i<eleven; i++)
                {
                    int a = XA[i];
                    if (a>=center && a>b && a>pass)
                    {
                        System.Console.WriteLine(num);
                        flg = true;
                    }
                    num += 1;
                }
                if (flg == false) { System.Console.WriteLine("None"); }
            } else {
                Array.Sort(XA);
                int a = XA[1];
                int pass = XB[U-1];
                int num = 1;
                bool flg = false;
                for (int i=0; i<eleven; i++)
                {
                    int b = XB[i];
                    if (b<=center && b<a && b<pass)
                    {
                        System.Console.WriteLine(num);
                        flg = true;
                    }
                    num += 1;
                }
                if (flg == false) { System.Console.WriteLine("None"); }
            }
        }
    }
}
