#include <algorithm>
#include <iostream>
using namespace std;
int main() {

    int     XA[11];
    int     XB[11];
    char    T[4];
    int     U,pass,flg,num,a,b;
    int     i;

    cin >> T;
    cin >> U;
    for (i=0; i<11; i++) { cin >> XA[i]; }
    for (i=0; i<11; i++) { cin >> XB[i]; }

    if (strcmp(T,"A") == 0) {
        pass = XA[U-1];
        sort(XB, XB+11);
        b = XB[9];
        flg = 0;
        num = 1;
        for (i=0; i<11; i++) {
            a = XA[i];
            if (a>=55 && a>b && a>pass) {
                cout << num << "\n";
                flg = 1;
            }
            num += 1;
        }
        if (flg == 0) { cout << "None\n"; }
    } else {
        pass = XB[U-1];
        sort(XA, XA+11);
        a = XA[1];
        flg = 0;
        num = 1;
        for (i=0; i<11; i++) {
            b = XB[i];
            if (b<=55 && b<a && b<pass) {
                cout << num << "\n";
                flg = 1;
            }
            num += 1;
        }
        if (flg == 0) { cout << "None\n"; }
    }
}
