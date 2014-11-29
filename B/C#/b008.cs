using System;
using System.Collections.Generic;
namespace Solution {
    class Solution {
        static void Main(string[] args) {

            int max = 0;
            var incom = new List<int>();

            string[] s = System.Console.ReadLine().Trim().Split(' ');
            int N = Int32.Parse(s[0]);
            int M = Int32.Parse(s[1]);
            if (M>0 && N>0)
            {
                for (int i=0; i<M; i++)
                {
                    int sum = 0;
                    string[] line = System.Console.ReadLine().Trim().Split(' ');
                    foreach(var n in line) { sum += Int32.Parse(n); }
                    incom.Add(sum);
                }
                foreach(var n in incom)
                {
                    if (n>0) { max += n; }
                }
            }
            System.Console.WriteLine(max);
        }
    }
}
