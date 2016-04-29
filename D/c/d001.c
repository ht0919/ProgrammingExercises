#include <stdio.h>
#include <string.h>

int main(void) {

    char str[255], *token1, *token2;

    fgets(str,sizeof(str),stdin);
    strtok(str, "\n\0");
    token1 = strtok(str , " ");
    token2 = strtok(NULL, " ");

    if (strcmp(token1,token2) == 0) {
        printf("True\n");
    } else {
        printf("False\n");
    }

    return 0;
}
