#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int i;
    int j;
    char flag[14];
    char v3[25] = "Drfhbmf pG`imos ewUglpt";

    for (i = 0; i <= 11; ++i) {
        for (j = 0; j < 256; j++) {
            if (v3[8 * (i % 3) + 2 * (i / 3)] - j == 1) {
                flag[i] = j;
            }
        }
    }

    printf("[+] Flag: %s\n", flag);

    return 0;
}
