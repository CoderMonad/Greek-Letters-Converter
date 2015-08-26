#include <iostream>
#include <string>
#include <math.h>
#include <cstdio>
#include "version.h"

using namespace std;

//Changes Number to Greek Letter
std::string Greek (int n)
{
	switch (n) {
		case 0:
			return "";
		case 1:
			return "Alpha";
		case 2:
			return "Beta";
		case 3:
			return "Gamma";
		case 4:
			return "Delta";
		case 5:
			return "Epsilon";
		case 6:
			return "Zeta";
		case 7:
			return "Eta";
		case 8:
			return "Theta";
		case 9:
			return "Iota";
		case 10:
			return "Kappa";
		case 11:
			return "Lambda";
		case 12:
			return "Mu";
		case 13:
			return "Nu";
		case 14:
			return "Xi";
		case 15:
			return "Omicron";
		case 16:
			return "Pi";
		case 17:
			return "Rho";
		case 18:
			return "Sigma";
		case 19:
			return "Tau";
		case 20:
			return "Upsilon";
		case 21:
			return "Phi";
		case 22:
			return "Chi";
		case 23:
			return "Psi";
		case 24:
			return "Omega";
		default :
			return "ERROR";
	}; //End Switch
}

int main()
{
	unsigned int Number;
	int Sec_1, Sec_2, Sec_3, Sec_4, Sec_5;
	string Letter_1, Letter_2, Letter_3, Letter_4, Letter_5;

	do {
		cout << "Please enter a number: ";
		cin >> Number;
		cout << endl << endl << endl << endl;
		if (Number > 8308824)
		{
			cout << "Error, the number you have entered is greater than 8,308,824." << endl << "Due to current coding, the program cannot go higher than this number" << endl;
			cout << endl;
			getchar();
		}
	} while (Number > 8308824 || Number < 0);

	if (Number > 24)
	{
		Sec_2 = floor((Number - 1) / 24);
		Sec_1 = Number - (Sec_2 * 24);
	}
	else {Sec_1 = Number;}

	if (Sec_2 > 24)
	{
		Sec_3 = floor((Sec_2 - 1) / 24);
		Sec_2 = Sec_2 - (Sec_3 * 24);
	}

	if (Sec_3 > 24)
	{
		Sec_4 = floor((Sec_3 - 1) / 24);
		Sec_3 = Sec_3 - (Sec_4 * 24);
	}

	if (Sec_4 > 24)
	{
		Sec_5 = floor((Sec_4 - 1) / 24);
		Sec_4 = Sec_4 - (Sec_5 * 24);
	}

	Letter_1 = Greek(Sec_1);
	Letter_2 = Greek(Sec_2);
	Letter_3 = Greek(Sec_3);
	Letter_4 = Greek(Sec_4);
	Letter_5 = Greek(Sec_5);


	cout << Letter_5 << " " << Letter_4 << " " << Letter_3 << " " << Letter_2 << " " << Letter_1 << endl;

	cout << endl << endl << endl << endl;

	getchar();

  return 0;
}
