#include <stdio.h>
#include "version.h"

#define DEFINED_MAX_NUM_LETTERS 5

int FLOOR(double var) {
    int integer = (int)var;
    return integer;
}

//Changes Number to Greek Letter
char *Greek (int n) {
    char *Letter;
    if (n == 1)
        Letter = "Alpha";
    else if (n == 2)
        Letter = "Beta";
    else if (n == 3)
        Letter = "Gamma";
    else if (n == 4)
        Letter = "Delta";
    else if (n == 5)
        Letter = "Epsilon";
    else if (n == 6)
        Letter = "Zeta";
    else if (n == 7)
        Letter = "Eta";
    else if (n == 8)
        Letter = "Theta";
    else if (n == 9)
        Letter = "Iota";
    else if (n == 10)
        Letter = "Kappa";
    else if (n == 11)
        Letter = "Lambda";
    else if (n == 12)
        Letter = "Mu";
    else if (n == 13)
        Letter = "Nu";
    else if (n == 14)
        Letter = "Xi";
    else if (n == 15)
        Letter = "Omicron";
    else if (n == 16)
        Letter = "Pi";
    else if (n == 17)
        Letter = "Rho";
    else if (n == 18)
        Letter = "Sigma";
    else if (n == 19)
        Letter = "Tau";
    else if (n == 20)
        Letter = "Upsilon";
    else if (n == 21)
        Letter = "Phi";
    else if (n == 22)
        Letter = "Chi";
    else if (n == 23)
        Letter = "Psi";
    else if (n == 24)
        Letter = "Omega";
    else if (n == 0)
        Letter = "";
    else
        Letter = "ERROR";

    return Letter;
}


int main() {
    int Number;
    int MaxValue;
    unsigned char i = 0;

    int Sec[DEFINED_MAX_NUM_LETTERS];
    char *Letters[DEFINED_MAX_NUM_LETTERS];

    //make sure all the sec numbers are 0
    for (i = 0; i < DEFINED_MAX_NUM_LETTERS; i++) {Sec[i] = 0;}

    //Calculate the max value based on number of letters
    for (i = 0; i < DEFINED_MAX_NUM_LETTERS; i++) {
            MaxValue *= 24;
            MaxValue += 24;
    }

    do {
        if (Number > MaxValue) {
            printf("Error, the number you have entered is incorrect. The number must be between 0 & %d\n", MaxValue);
            printf("Due to current coding, the program cannot go higher than this number\n");
            getchar();
        }

        printf("\n\n");
        printf("Please enter a number: ");
        scanf ("%d",&Number);
        printf("\n\n\n\n\n\n");
    } while (Number > MaxValue || Number < 0);

    Sec[0] = Number;

    //Get Section Numbers
    for (i = 0; i < DEFINED_MAX_NUM_LETTERS; i++) {
        if (Sec[i] > 24 && i != DEFINED_MAX_NUM_LETTERS - 1) {
            Sec[i + 1] = FLOOR( ( Sec[i] - 1) / 24);
            Sec[i] -= Sec[i + 1] * 24;
        } //end if
    } //end for


    //get the letters
    for (i = 0; i < DEFINED_MAX_NUM_LETTERS; i++) { Letters[i] = Greek(Sec[i]); }

    //In reverse order write all the letters
    for (i = DEFINED_MAX_NUM_LETTERS; i > 0; i--) { printf(" %s", Letters[i - 1]); }
    printf("\n");
    getchar();
    return 0;
}
