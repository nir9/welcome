#include <stdio.h>
#include <stdbool.h>

void print_hex(unsigned char* buffer, int num) {
    for (int i = 0; i < num; i++) {
        if (i % 10 == 0) {
            printf("\n");
        }

        printf("%.2X ", buffer[i]);
    }

    printf("\n");
}

void main(int argc, char** argv) {
    FILE* f = fopen(argv[1], "r");
    unsigned char buffer[1024];
    int num_of_bytes = fread(buffer, 1, 1024, f);
    print_hex(buffer, num_of_bytes);

    while (true) {
        char cmd;
        int loc;
        scanf("%c%d", &cmd, &loc);

        if (cmd == 'p') {
            print_hex(buffer + loc, 10);
        }

        if (cmd == 'e') {
            scanf("%x", buffer + loc);
        }

        if (cmd == 's') {
            break;
        }
    }
    
    fclose(f);
    f = fopen(argv[1], "w");
    fwrite(buffer, 1, 1024, f);
    fclose(f);
}
