using System;
using System.IO;

namespace GreekLettersApplication {
	public static class Functions {
		public static int FLOOR(float var) {
			int integer = (int)var;
			return integer;
		}

		public static string Greek(int n) {
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
			else if (n == 0)
				Letter = "";
			else
				Letter = "ERROR";
			return Letter;
		}//end Greek function
	} //end public funtions
		
	class GreekLetters	{
		static void Main() {
			int Number = 8308825; //Set this way so I know the while loop will run once
			int Sec_1 = 0;
			int Sec_2 = 0;
			int Sec_3 = 0;
			int Sec_4 = 0;
			int Sec_5 = 0;
			
			string Letter_1;
			string Letter_2;
			string Letter_3;
			string Letter_4;
			string Letter_5;
			
			while (Number > 8308824) {
				Console.WriteLine("Please enter a number, also note that the number cannot be greater than 8,308,824 due to current programming");
				Console.Write("Enter Number: ");
				string input = Console.ReadLine();
				Int32.TryParse(input, out Number);
				
				Console.Write("\n\n");
				if (Number > 8308824) {
					Console.WriteLine("The number you have entered is too large please try again with a smaller number");
					Console.ReadKey();
				}
			} //end while
			
			if (Number > 24) {
				Sec_2 = Functions.FLOOR((Number - 1) / 24);
				Sec_1 = Number - (Sec_2 * 24);
			}
			else {Sec_1 = Number;}
			
			if (Sec_2 > 24) {
				Sec_3 = Functions.FLOOR((Sec_2 - 1) / 24);
				Sec_2 = Sec_2 - (Sec_3 * 24);
			}
			
			if (Sec_3 > 24) {
				Sec_4 = Functions.FLOOR((Sec_3 - 1) / 24);
				Sec_3 = Sec_3 - (Sec_4 * 24);
			}
	
			if (Sec_4 > 24) {
				Sec_5 = Functions.FLOOR((Sec_4 - 1) / 24);
				Sec_4 = Sec_4 - (Sec_5 * 24);
			}
			
			Letter_1 = Functions.Greek(Sec_1);
			Letter_2 = Functions.Greek(Sec_2);
			Letter_3 = Functions.Greek(Sec_3);
			Letter_4 = Functions.Greek(Sec_4);
			Letter_5 = Functions.Greek(Sec_5);
			
			Console.Write("\n\n");
			Console.WriteLine("{0} {1} {2} {3} {4} {5}",Letter_5,Letter_4,Letter_3,Letter_2,Letter_1);
			Console.ReadKey();
		} //End Main
	} //End Class
}//end namespace
