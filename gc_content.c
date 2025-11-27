#include <stdio.h>
#include <ctype.h>

int main(void) {
    char ch;
    int gc = 0, total = 0;

    printf("Enter DNA sequence (A/T/G/C), end with ENTER:\n");

    while ((ch = getchar()) != '\n' && ch != EOF) {
        ch = toupper((unsigned char)ch);
        if (ch == 'A' || ch == 'T' || ch == 'G' || ch == 'C') {
            total++;
            if (ch == 'G' || ch == 'C') gc++;
        }
    }

    if (total == 0) {
        printf("No valid bases found.\n");
        return 0;
    }

    double gc_content = (gc * 100.0) / total;
    printf("GC content: %.2f%% (%d / %d bases)\n", gc_content, gc, total);
    return 0;
}
