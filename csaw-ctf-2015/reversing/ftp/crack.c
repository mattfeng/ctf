#include <stdio.h>
#include <string.h>

long long compute(char *string) {
    int x;
    x = 0x1505;
    //printf("sizeof pointer: %d\n", sizeof(string));
    //printf("sizeof int, long: %d, %d\n", sizeof(int), sizeof(long));
    int i;
    for (i = 0; *(char *)(i + string); ++i) {
        x = 33 * x + *(char *)(i + string);
    }

    return x;
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s <password>\n", argv[0]);
        return 1;
    }

    char *password = argv[1];
    unsigned int hashed = (unsigned int) compute(password);
    printf("%u = %d = %x\n", hashed, hashed, hashed);
    if (hashed == 0xd386d209)
        printf("SUCCESS!\n");

    return 0;
}

// WORKING PASSWORD:
// UJCVsy[CTRL-D]
//
// RE reveals that there's a hidden command: RDF
// FTP 1: flag{n0_c0ok1e_ju$t_a_f1ag_f0r_you}
// idk how "exploitation" worked, but PASV, establish another connection, RETR flag.txt, win!
// FTP 2: flag{exploiting_ftp_servers_in_2015}
