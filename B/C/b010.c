#include <stdio.h>

int int_sort(const void* a, const void* b) {
  if(*(int*)a < *(int*)b) {
    return -1;
  } else if(*(int*)a == *(int*)b) {
    return 0;
  }
  return 1;
}

int main() {

    int     XA[11];
    int     XB[11];
    char    T[4];
    int     U,pass,flg,num,a,b;
    int     i;

    scanf("%s", T);
    scanf("%d", &U);
    for (i=0; i<11; i++) { scanf("%d", &XA[i]); }
    for (i=0; i<11; i++) { scanf("%d", &XB[i]); }

    if (strcmp(T,"A") == 0) {
        pass = XA[U-1];
        qsort(XB, 11, sizeof(XB[0]), int_sort);
        b = XB[9];
        flg = 0;
        num = 1;
        for (i=0; i<11; i++) {
            a = XA[i];
            if (a>=55 && a>b && a>pass) {
                printf("%d\n",num);
                flg = 1;
            }
            num += 1;
        }
        if (flg == 0) { printf("None\n"); }
    } else {
        pass = XB[U-1];
        qsort(XA, 11, sizeof(XA[0]), int_sort);
        a = XA[1];
        flg = 0;
        num = 1;
        for (i=0; i<11; i++) {
            b = XB[i];
            if (b<=55 && b<a && b<pass) {
                printf("%d\n",num);
                flg = 1;
            }
            num += 1;
        }
        if (flg == 0) { printf("None\n"); }
    }
}
