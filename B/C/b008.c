#include <stdio.h>
int main() {
    int incom[1000];
    int M,N,max=0,sum;
    int i,j,n;

    scanf("%d %d", &N, &M);
    if (M>0 && N>0) {
        for (i=0; i<M; i++) {
            sum = 0;
            for (j=0; j<N; j++) {
                scanf("%d", &n);
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
    printf("%d\n",max);
    return 0;
}
