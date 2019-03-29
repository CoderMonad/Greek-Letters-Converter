#!/usr/bin/perl
# Using tutorial found here: http://www.tutorialspoint.com/perl/index.htm

=begin comment
Multi line comments here
=cut

=begin comment
Single vs Double Quotes

print "Hello, world\n";
Hello, world
print 'Hello, world\n';
Hello, world\n

$a
print "Value of a = $a\n";
Value of a = 10
print 'Value of a = $a\n';
Value of a = $a\n

=cut

=begin comment
Types

Scalar -
simple variables; preceded by $ 
number, string, reference

Arrays -
Ordered lists of scalars preceded by @

Hashes -
Unordered sets of key/value pairs preceded by %

=cut

=begin comment
Sequential Number arrays

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

=cut

# . concatenates two strings


# Now on to the actual code

use POSIX;

$Version_Number = "v0.9.1";
$datestring = localtime();

sub GreekLetter {
	$n = scalar(@_);
	
	foreach $item (@_) {
		if ($item == 0) {print " ";}
		elsif ($item == 1) {print "Alpha ";}
		elsif ($item == 2) {print "Beta ";}
		elsif ($item == 3) {print "Gamma ";}
		elsif ($item == 4) {print "Delta ";}
		elsif ($item == 5) {print "Epsilon ";}
		elsif ($item == 6) {print "Zeta ";}
		elsif ($item == 7) {print "Eta ";}
		elsif ($item == 8) {print "Theta ";}
		elsif ($item == 9) {print "Iota ";}
		elsif ($item == 10) {print "Kappa ";}
		elsif ($item == 11) {print "Lambda ";}
		elsif ($item == 12) {print "Mu ";}
		elsif ($item == 13) {print "Nu ";}
		elsif ($item == 14) {print "Xi ";}
		elsif ($item == 15) {print "Omicron ";}
		elsif ($item == 16) {print "Pi ";}
		elsif ($item == 17) {print "Rho ";}
		elsif ($item == 18) {print "Sigma ";}
		elsif ($item == 19) {print "Tau ";}
		elsif ($item == 20) {print "Upsilon ";}
		elsif ($item == 21) {print "Phi ";}
		elsif ($item == 22) {print "Chi ";}
		elsif ($item == 23) {print "Psi ";}
		elsif ($item == 24) {print "Omega ";}
		else {print "ERROR ";}
	}
}

sub main {
	
	$num1 = 0;
	$num2 = 0;
	$num3 = 0;
	$num4 = 0;
	$num5 = 0;
	
	do {
		print ("Please enter a number between 0 and 8,308,824: ");
		my $input = <STDIN>;
	} while ( $input > 8308824 || $input < 0);
	
	if ( $input > 24 ) {
		$num2 = floor( ($input - 1) / 24);
		$num1 = $input - $num2 * 24;
	} else {
		$num1 = floor($input);
	}
	
	if ( $num2 > 24 ) {
		$num3 = floor(($num2 - 1) / 24);
		$num2 = $num2 - ($num3 * 24);
	}
	
	if ( $num3 > 24 ) {
		$num4 = floor(($num3 - 1) / 24);
		$num3 = $num3 - ($num4 * 24);
	} 
	
	if ( $num4 > 24 ) {
		$num5 = floor(($num4 - 1) / 24);
		$num2 = $num4 - ($num5 * 24);
	}
    
	
	print "\n";
	
	GreekLetter($num5, $num4, $num3, $num2, $num1);
}


main();
