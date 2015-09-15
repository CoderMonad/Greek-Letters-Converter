#include <iostream>
#include <string>
#include <math.h>
#include <cstdio>

#include "version.h"

using namespace std;

//Change this if you want to increase the number of letters
#define DEFINED_MAX_NUMBER_OF_LETTERS 5

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
	unsigned int MaxValue;
	int Secs[DEFINED_MAX_NUMBER_OF_LETTERS];
	string Letters[DEFINED_MAX_NUMBER_OF_LETTERS];

    //get the max value based on the number of letters
    for (unsigned char i = 0; i < DEFINED_MAX_NUMBER_OF_LETTERS; i++) {
        MaxValue *= 24;
        MaxValue += 24;
    }

	do {
		cout << "Please enter a number: ";
		cin >> Number;
		cout << endl << endl << endl << endl;
		if (Number > MaxValue) {
			cout << "Error, the number you have entered is greater than "<< MaxValue << "." << endl << "Due to current coding, the program cannot go higher than this number" << endl;
			cout << endl;
			getchar();
		}
	} while (Number > MaxValue || Number < 0);

    //Make sure they all equal 0
    for (unsigned char i = 0; i < DEFINED_MAX_NUMBER_OF_LETTERS; i++) {Secs[i] = 0;}

	Secs[0] = Number;

    for (unsigned char i = 0; i < DEFINED_MAX_NUMBER_OF_LETTERS; i++) {
        if (Secs[i] > 24 && i != DEFINED_MAX_NUMBER_OF_LETTERS - 1) {
            Secs[i + 1] = floor( ( Secs[i] - 1 ) / 24 );
            Secs[i] -= Secs[i + 1] * 24;
        } //end if
    } //end for

    for (unsigned char i = 0; i < DEFINED_MAX_NUMBER_OF_LETTERS; i++) {
        Letters[i] = Greek( Secs[i] );
    }

    //now print out the letters in reverse order
    for (unsigned char i = DEFINED_MAX_NUMBER_OF_LETTERS; i > 0; i--) {
        cout<<" "<<Letters[i-1];
    }

	cout << endl << endl << endl << endl;

	getchar();

  return 0;
}
