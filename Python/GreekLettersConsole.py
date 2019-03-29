# Tutorial used: http://pythonprogramming.net

# Note to self:  Make a graphic python program as well Later

#Little notes about Python that I don't use in the code but still useful to know
#Exponents 4**4

# For Loop
#	for each_number in range(4):
#		print(each_number)

# While Loop
# condition = 1
# while condition < 10:
#	print(condition)
#	condition += 1

# List
# exampleList = [1,5,6,6,2,1,5,2,1,4]
# for x in exampleList:
#	print(x)

# If ElseIf Else
# if x > y:
#	print('x greater than y')
# elif x < z:
#	print('x is less than z')
# else:
#	print('if and elif never ran')

# Writing to a file
# saveFile = open('exampleFile.txt','w')
# saveFile.write(text)
# saveFile.close()

# Reading from file
# readMe = open("exampleFile.txt",'r').read()
# readMe = open("exampleFile.txt",'r').readlines() 

# Classes
# class calculator:
#	def addition(x,y):
#		added = x + y
#		print(added)
#	def subtaction(x,y):
#		sub = x - y
#		print(sub)
#   def multiplication(x,y):
#       mult = x * y
#       print(mult)
#   def division(x,y):
#       div = x / y
#       print(div)

# calculator.subtaction(5,8)

# Multi-dimensional lists
# x = [[2,6],[6,2],[8,2],[5,12]]
# print(x[2])

# function
def GreekLetter(number):
	if number == 0:
		print("")
	elif number == 1:
		print("Alpha")
	elif number == 2:
		print("Beta")
	elif number == 3:
		print("Gamma")
	elif number == 4:
		print("Delta")
	elif number == 5:
		print("Epsilon")
	elif number == 6:
		print("Zeta")
	elif number == 7:
		print("Eta")
	elif number == 8:
		print("Theta")
	elif number == 9:
		print("iota")
	elif number == 10:
		print("Kappa")
	elif number == 11:
		print("Lambda")
	elif number == 12:
		print("Mu")
	elif number == 13:
		print("Nu")
	elif number == 14:
		print("Xi")
	elif number == 15:
		print("Omicron")
	elif number == 16:
		print("Pi")
	elif number == 17:
		print("Rho")
	elif number == 18:
		print("Sigma")
	elif number == 19:
		print("Tau")
	elif number == 20:
		print("Upsilon")
	elif number == 21: 
		print("Phi")
	elif number == 22:
		print("Chi")
	elif number == 23:
		print("Psi")
	elif number == 24:
		print("Omega")
	else:
		print("ERROR")

		
# Main function
num = 8308325 # Just so I know the while loop will run
while (num > 8308324 or num <= 0) :
	num = int(input("Please enter a number between 0 and 8,308,324: "))
	if num > 8308324 :
		print("\nThe number you have entered is too large, try again.\n")
	elif num <= 0:
		print("\nThe number you have entered is too small, try again.\n")


Sec_1 = 0
Sec_2 = 0
Sec_3 = 0
Sec_4 = 0
Sec_5 = 0

if num > 24:
	Sec_2 = int((num-1)/24)
	Sec_1 = int(num - (Sec_2 * 24))
else :
	Sec_1 = num

if Sec_2 > 24:
	Sec_3 = int((Sec_2 - 1)/24)
	Sec_2 = int(Sec_2 - (Sec_3 * 24))

if Sec_3 > 24:
	Sec_4 = int((Sec_3 - 1)/24)
	Sec_3 = int(Sec_3 - (Sec_4 * 24))

if Sec_4 > 24:
	Sec_5 = int((Sec_4 - 1)/24)
	Sec_4 = int(Sec_4 - (Sec_5 * 24))	

	
#print(Sec_5)
#print(Sec_4)
#print(Sec_3)
#print(Sec_2)
#print(Sec_1)

GreekLetter(Sec_5)
GreekLetter(Sec_4)
GreekLetter(Sec_3)
GreekLetter(Sec_2)
GreekLetter(Sec_1)

