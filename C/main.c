#include <stdio.h>
#include "version.h"

int FLOOR(double var)
{
    int integer = (int)var;
    return integer;
}

//Changes Number to Greek Letter
char *Greek (int n)
{
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


int main()
{
int Number;
double Sec_1;
double Sec_2;
double Sec_3;
double Sec_4;
double Sec_5;

char *Letter_1;
char *Letter_2;
char *Letter_3;
char *Letter_4;
char *Letter_5;


printf("\n\n");
Start:
printf("Please enter a number: ");
scanf ("%d",&Number);
printf("\n\n\n\n\n\n");
if (Number > 8308824)
{
	printf("Error, the number you have entered is greater than 8,308,824.\n");
	printf("Due to current coding, the program cannot go higher than this number\n");
	printf("\n\n\n\n\n\n\n");
	getchar();
	goto Start;
}

	if (Number > 24)
	{
		Sec_2 = FLOOR((Number - 1) / 24);
		Sec_1 = Number - (Sec_2 * 24);
	}
	else
	{
	    Sec_1 = Number;
	}

	if (Sec_2 > 24)
	{
		Sec_3 = FLOOR((Sec_2 - 1) / 24);
		Sec_2 = Sec_2 - (Sec_3 * 24);
	}

	if (Sec_3 > 24)
	{
		Sec_4 = FLOOR((Sec_3 - 1) / 24);
		Sec_3 = Sec_3 - (Sec_4 * 24);
	}

	if (Sec_4 > 24)
	{
		Sec_5 = FLOOR((Sec_4 - 1) / 24);
		Sec_4 = Sec_4 - (Sec_5 * 24);
	}

Letter_1 = Greek(Sec_1);
Letter_2 = Greek(Sec_2);
Letter_3 = Greek(Sec_3);
Letter_4 = Greek(Sec_4);
Letter_5 = Greek(Sec_5);



printf("\n%s ",Letter_5);
printf("%s ",Letter_4);
printf("%s ",Letter_3);
printf("%s ",Letter_2);
printf("%s",Letter_1);

printf("\n");


getchar();

return 0;
}
