#include <iostream>
using namespace std;
int main() {

    int incom[1000];
    int M,N,max=0,sum;
    int i,j,n;

    cin >> N;
    cin >> M;
    if (M>0 && N>0) {
        for (i=0; i<M; i++) {
            sum = 0;
            for (j=0; j<N; j++) {
                cin >> n;
                sum += n;
            }
            incom[i] = sum;
        }
        max = 0;
        for (i=0; i<M; i++) {
            if (incom[i]>0) {
                max += incom[i];
            }
        }
    }
    cout << max << "\n";
    return 0;
}
