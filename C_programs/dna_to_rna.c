#include <stdio.h>
#include <string.h>

int main() {
    int i, n;
    char dna[100];
    char rna[100];

    printf("Enter the DNA sequence: ");
    scanf("%s", dna);

    n = strlen(dna);

    for (i = 0; i < n; i++) {
        if (dna[i] == 'T') {
            rna[i] = 'A';
        } else if (dna[i] == 'A') {
            rna[i] = 'U';
        } else if (dna[i] == 'G') {
            rna[i] = 'C';
        } else if (dna[i] == 'C') {
            rna[i] = 'G';
        } else {
            rna[i] = dna[i];
        }
    }

    printf("The RNA sequence: %s\n", rna);
    return 0;
}
