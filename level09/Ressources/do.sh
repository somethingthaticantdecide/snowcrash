./level09 "0000000000000000000000000000000000000000000000000000000000"
cd /tmp
echo '
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char **argv, char **env)
{
    FILE *fp;
    char buff[255];

    fp = fopen(argv[1], "r");
    fscanf(fp, "%s", buff);

    fclose(fp);
    
    for (int i = 0; i < strlen(buff); ++i) {
        printf("%c", buff[i] - i);
    }
    printf("\n");
    return 0;
}
' > x.c
gcc x.c -std=c99
cd
 /tmp/a.out token