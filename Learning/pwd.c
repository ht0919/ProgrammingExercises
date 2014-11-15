#include <stdio.h>
int main(int argc, char *argv[]) {
    char buf[BUFSIZ]; //512
    if(getcwd(buf, sizeof(buf))/* != NULL*/) printf("%s\n", buf);
    return 0;
}
