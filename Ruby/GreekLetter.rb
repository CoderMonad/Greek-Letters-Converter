#!/usr/bin/ruby

#Thanks to tutorial point for the tutorial at http://www.tutorialspoint.com/ruby/index.htm

# Random notes about ruby that I don't use in the code but that are still useful to know.

# Begin {
#	Code that is run before the main code
# }

# End {
#	Code that is run at the end of the code
# }

# this hides several lines from the interpreter
=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end

# Variable scopes
#	_Local # variable that can only be seen in a method
#	@Instance # variable that is available across methods
#	@@Class # variable available across difference objects
#	$Global # variable available across classes
#	Constants begin with an uppercase letter

# Classes
# class Customer
#	@@no_of_customers = 0
#	def initialize (id, name, addr)
#		@cust_id = id
#		@cust_name = name
#		@cust_addr = addr
#	end
#	def hello
#		puts "Hello"
#	end
# end

# Creating objects
# cust1 = Customer.new("1", "John", "Something Something")
# cust2 = Customer.new("2", "Paul", "Blah Blah")

# If initialize is not defined objects are created as below
# cust1 = Customer.new

# Calling object functions
# cust1.hello

# Putting variable amount in print
# puts "Variable X equals #$global_variable_x"

# Math before puts
# puts "Multiplication Value : #{24*60*60}";

# arrays
# ary = ["fred", 10, 3.141, "This is a string", "last element", ]
# arry.each do |i|
#	puts i
# end

# Ranges
# (10..15).each do |n|
#	print n, ' '
# end

# puts = end with newline, print = does not end with newline

# exponent a**b (everything else is as expected)

# Comparison Operators
# equals a == b
# not equal a != b
# a <=> b
#	returns 0 if they equal
#	returns 1 if a > b
#	returns -2 if a < b
# (1...10) === 5
#		test equality within a when clause of a case statement
# 1.eql? (1.0)
#		true if both have same value AND same type
# .equal? 
#		true if receiver and argument have the same object id

# note ruby has +=, -=, *=, /=, %=, **=

# ruby supports parallel assignment
# a, b, c = 10, 20, 30

# binary operaters like c++

# logical operators like c++

# Range Operators
# 1..10; inclusive end (1 to 10)
# 1...10; exclusive end (1 to 9)

# if else if else
# if conditional [then]
#		code...
# elsif conditional [then]
#		code...
# else
#		code...
# end

# if modifier
# code if condition
# print "debug\n" if $debug

# unless statement
# unless conditional [then]
#		code if conditional is false
# else
#		code if conditional is true
# end

# case statement
# case expression
# when expression then
#		code...
# else
#		code..
# end

# while conditional [do]
#	code
# end

# while modifier
# code while condition
# OR
# begin
#   code
#	this method ensures the code is run at least once
# end while conditional

# until (basically while false)
# see above for uses

# for variable [, variable ...] in expression [do]
#	code
# end

# example
# for i in 0..5
#	puts "#{i}"
# end

# break stops loop

# next goes to next iteration values

# resets this iteration

# Exception handling
# begin
#   do_something # exception raised
# rescue
#   handles error
#   retry  # restart from beginning
# end

# default values in method
# def test (a1 = "Ruby", a2 = "Perl")
#	puts "#{a1}"
#	puts "#{a2}"
# end
#
# test "C", "C++" produces
# C C++
# test "C" produces
# C Perl
# test produces
# Ruby Perl

# returns
# def test
#   i = 100
#   j = 200
#   k = 300
# return i, j, k
# end
# var = test
# puts var
# result
# 100
# 200
# 300

# gets = get value
# putc = put char

# Open file
# aFile = File.new("filename", "mode")
# aFile.close

### Now on to the actual code

# create a class for the letters
class Letter 
	@num
	@string
	def initialize (value = 0)
		@num = value
		@string = ""
	end #end initialize
	def getString
		@string = ""
		case @num
			when 0
				@string = ""
			when 1
				@string = "Alpha"
			when 2
				@string = "Beta"
			when 3
				@string = "Gamma"
			when 4
				@string = "Delta"
			when 5
				@string = "Epsilon"
			when 6
				@string = "Zeta"
			when 7
				@string = "Eta"
			when 8
				@string = "Theta"
			when 9
				@string = "Iota"
			when 10
				@string = "Kappa"
			when 11
				@string = "Lambda"
			when 12
				@string = "Mu"
			when 13
				@string = "Nu"
			when 14
				@string = "Xi"
			when 15
				@string = "Omicron"
			when 16
				@string = "Pi"
			when 17
				@string = "Rho"
			when 18
				@string = "Sigma"
			when 19
				@string = "Tau"
			when 20
				@string = "Upsilon"
			when 21
				@string = "Phi"
			when 22
				@string = "Chi"
			when 23
				@string = "Psi"
			when 24
				@string = "Omega"
			else 
				@string = "ERROR"
		end # end case
	end # end getString
	def returnString
		return @string
	end #end returnString
end # end class Letter


# create a class that will hold the different section numbers
class Number
	@num
	@Sec_1
	@Sec_2
	@Sec_3
	@Sec_4
	@Sec_5
	def initialize (value = 0)
		@num = value
		@Sec_1, @Sec_2, @Sec_3, @Sec_4, @Sec_5 = 0, 0, 0, 0, 0
	end #end initialize
	def getSections
		if @num > 24 then
			@Sec_2 = ((@num - 1) / 24).round
			@Sec_1 = @num - (@Sec_2 * 24)
		else
			@Sec_1 = @num
		end
		
		if @Sec_2 > 24 then
			@Sec_3 = ((@Sec_2 - 1) / 24).round
			@Sec_2 = @Sec_2 - (@Sec_3 * 24)
		end 
		
		if @Sec_3 > 24 then
			@Sec_4 = ((@Sec_3 - 1) / 24).round
			@Sec_3 = @Sec_3 - (@Sec_4 * 24)
		end 
		
		if @Sec_4 > 24 then
			@Sec_5 = ((@Sec_4 - 1) / 24).round
			@Sec_4 = @Sec_4 - (@Sec_5 * 24)
		end
	end #end getSections
	def returnSec1
		return @Sec_1
	end #end returnSec1
	def returnSec2
		return @Sec_2
	end #end returnSec2
	def returnSec3
		return @Sec_3
	end #end returnSec3
	def returnSec4
		return @Sec_4
	end #end returnSec4
	def returnSec5
		return @Sec_5
	end #end returnSec5
end #end class Number


# Create global value to be used
$number = 0

# Prompt user for input
begin
	puts "Please enter a number: "
	_temp = gets
	$number = _temp.to_i
	
	#print "#{$number}"
	
	if $number > 8308824 then
		puts "The number you have entered is too large."
		puts "Due to current coding the program can only handle numbers from 0 to 8,308,824"
	end
	
	if $number < 0 then
		puts "The number you have entered is too small."
		puts "The number must be between 0 and 8,308,824"
	end

end while ( ($number > 8308824) || ($number < 0) )

UserValue = Number.new ($number)

UserValue.getSections

Letter1 = Letter.new(UserValue.returnSec1)
Letter2 = Letter.new(UserValue.returnSec2)
Letter3 = Letter.new(UserValue.returnSec3)
Letter4 = Letter.new(UserValue.returnSec4)
Letter5 = Letter.new(UserValue.returnSec5)

Letter1.getString
Letter2.getString
Letter3.getString
Letter4.getString
Letter5.getString

print "\n\n\n"
print "#{$number} = "
print "#{Letter5.returnString} #{Letter4.returnString} #{Letter3.returnString} #{Letter2.returnString} #{Letter1.returnString}\n\n"


