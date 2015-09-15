//tutorial http://www.tutorialspoint.com/java/index.htm

/*
enum ex 
enum FreshJuiceSize {SMALL, MEDIUM, LARGE }
FreshJuiceSize size;
*/

/* 
Making object
class FreshJuice {BLAH}
juice = new Freshjuice();
*/

/*
Access control modifiers:

Visible to the package (nothing)
Visible to class only (private)
Visible to world (public)
Visible to package and all subclasses (protected)


Non Access Modifiers
static for creating class method and variables
final for finalizing the implementations of classes, methods, and variables
abstract for creating abstract classes and methods
synchronized and volatile used for threads

*/

//Now on to the actual code.

import java.io.*; //showing stuff to user
import java.util.Date; //To display the date (pointless, just testing this)
import java.util.Scanner; //for getting input from user

class Letter {
	int num;
	String Letter;
	
	//Constructor without parameter in case of error.
	public Letter() { this.num = 25; }
	
	//Constructor with parameter as it should be.
    public Letter(int number) { this.num = number;}
	
	public void getLetter() {
		switch( this.num ) {
			case 0:
				this.Letter = "";
				break;
			case 1:
				this.Letter = "Alpha";
				break;
			case 2:
				this.Letter = "Beta";
				break;
			case 3:
				this.Letter = "Gamma";
				break;
			case 4:
				this.Letter = "Delta";
				break;
			case 5:
				this.Letter = "Epsilon";
				break;
			case 6:
				this.Letter = "Zeta";
				break;
			case 7:
				this.Letter = "Eta";
				break;
			case 8:
				this.Letter = "Theta";
				break;
			case 9:
				this.Letter = "Iota";
				break;
			case 10:
				this.Letter = "Kappa";
				break;
			case 11:
				this.Letter = "Lambda";
				break;
			case 12:
				this.Letter = "Mu";
				break;
			case 13:
				this.Letter = "Nu";
				break;
			case 14:
				this.Letter = "Xi";
				break;
			case 15:
				this.Letter = "Omicron";
				break;
			case 16:
				this.Letter = "Pi";
				break;
			case 17:
				this.Letter = "Rho";
				break;
			case 18:
				this.Letter = "Sigma";
				break;
			case 19:
				this.Letter = "Tau";
				break;
			case 20:
				this.Letter = "Upsilon";
				break;
			case 21:
				this.Letter = "Phi";
				break;
			case 22:
				this.Letter = "Chi";
				break;
			case 23:
				this.Letter = "Psi";
				break;
			case 24:
				this.Letter = "Omega";
				break;
			default :
				this.Letter = "ERROR";
				break;
		} //end switch
	} //end getLetter
	
	public void showLetter() {
		System.out.print(" " + this.Letter );
	}
}


public class GreekLetters {
	
	//Some variables that really mean nothing, but I have them here to play with
	static String strVersion = "v1.0.0";
	static Date date = new Date();
	
	public static void main( String []args ) {
		System.out.println( date.toString() );
		System.out.println("Running version number: " + strVersion);
		Scanner reader = new Scanner( System.in );
		
		//prompt user for number, keep prompting if it is not in correct range		
		int input = 0;
		do {
			if (input < 0 || input > 8308824) {
				System.out.println("You have entered an incorrect number, it has to be between 0 and 8,308,824");
			}
			
			System.out.print("Please enter a number: ");
			input = reader.nextInt();
			System.out.print("\n");
		} while (input < 0 || input > 8308824);
		
		int[] sec_nums = {0, 0, 0, 0, 0}; //array of section numbers
		sec_nums[0] = input;
		
		Letter[] letterArray = new Letter[5]; //an array to hold the letter objects
		
		for (int i = 0; i < sec_nums.length; i++) {
			//the i != ( sec_nums.length - 1) is to make sure that if we are on the 
			//last array element we aren't trying to access the next element (which doesn't exist)
			if ( sec_nums[i] > 24 && i != ( sec_nums.length - 1) ) {
				sec_nums[i + 1] = (int) Math.floor( ( sec_nums[i] - 1)  / 24);
				sec_nums[i] -= sec_nums[i + 1] * 24;
			} //end if greater than 24
		} //end for array
		
		
		//now make all the letter objects
		for (int i = 0; i < letterArray.length; i++) {
			letterArray[i] = new Letter( sec_nums[i] );
			letterArray[i].getLetter();
		} //end for letterArray
		
		//now loop through the array the other way to show all the letters in the right order
		for (int i = letterArray.length - 1; i >= 0; i--) {
			letterArray[i].showLetter();
		}
		
		System.out.print("\n");
	}
}
