#include <iostream>
#include <string>
#include <cstring>
#include <math.h>
#include <cstdlib>

using namespace std;

//Changes Number to Greek Letter
std::string Greek (int n)
{
string Letter;
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
else
	Letter = "";
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

string Letter_1;
string Letter_2;
string Letter_3;
string Letter_4;
string Letter_5;

Start:
cout << "Please enter a number: ";
cin >> Number;
cout << endl << endl << endl << endl;
if (Number > 8308824)
{
	cout << "Error, the number you have entered is greater than 8,308,824." << endl << "Due to current coding, the program cannot go higher than this number" << endl;
	cout << endl << endl << endl << endl;
	getchar();
	goto Start;
}



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