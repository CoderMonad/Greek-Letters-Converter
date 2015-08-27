<?php
	/* PHP is weird...
	   I cannot figure it out, (at least now what I'm trying to do)
	   I want to separate the HTML file and the PHP files so it doesn't an
	   show a disproportion usage of HTML code on GitHub; but what I'm doing doesn't seem to be working
	   I keep at it. 
	/*
	
	/* Thanks to the people at tutorials point for their tutorial at
	   http://www.tutorialspoint.com/php/index.htm */
	# I wonder if I can get the code to print the entire web-page?
	
	#Generic notes about PHP for me to reference later
	
	/* PHP is embedded in HTML usually ex:
		<html>
		   <body>
			  <?php
				 echo "<h1>Hello, PHP!</h1>";
			  ?>
		   </body>	
		</html>
	*/
	
	#variables are denoted with a leading $
	
	/* variable types
		Integers
		Doubles
		Booleans
		NULL
		strings
		Arrays
		Objects
		Resources
	*/
	
	/*$body =<<<_HTML_
	<h1>Greek Letters - PHP v0.9.0</h1>
	<br />
	<p>This is a test of PHP to HTML code</p>
	_HTML_;*/
	
	echo <h1>Greek Letters - PHP v0.1.0</h1>;
	echo <br/>;
	echo <p>This is a test of PHP to HTML code</p>;
		
?>