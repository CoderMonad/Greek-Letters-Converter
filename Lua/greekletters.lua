function Greek(n)
local Letter
	if (n == 1)
	then
		Letter = "Alpha";
	elseif (n == 2)
	then
		Letter = "Beta";
	elseif (n == 3)
	then
		Letter = "Gamma";
	elseif (n == 4)
	then
		Letter = "Delta";
	elseif (n == 5)
	then
		Letter = "Epsilon";
	elseif (n == 6)
	then
		Letter = "Zeta";
	elseif (n == 7)
	then
		Letter = "Eta";
	elseif (n == 8)
	then
		Letter = "Theta";
	elseif (n == 9)
	then
		Letter = "Iota";
	elseif (n == 10)
	then
		Letter = "Kappa";
	elseif (n == 11)
	then
		Letter = "Lambda";
	elseif (n == 12)
	then
		Letter = "Mu";
	elseif (n == 13)
	then
		Letter = "Nu";
	elseif (n == 14)
	then
		Letter = "Xi";
	elseif (n == 15)
	then
		Letter = "Omicron";
	elseif (n == 16)
	then
		Letter = "Pi";
	elseif (n == 17) 
	then
		Letter = "Rho";
	elseif (n == 18) 
	then
		Letter = "Sigma";
	elseif (n == 19) 
	then
		Letter = "Tau";
	elseif (n == 20) 
	then
		Letter = "Upsilon";
	elseif (n == 21) 
	then
		Letter = "Phi";
	elseif (n == 22) 
	then
		Letter = "Chi";
	elseif (n == 23) 
	then
		Letter = "Psi";
	elseif (n == 24) 
	then
		Letter = "Omega";
	elseif (n == 0)
	then
		Letter = "";
	else
		Letter = "ERROR";
	end
	return Letter
end

local Sec_1, Sec_2, Sec_3, Sec_4, Sec_5 = 0,0,0,0,0
local Number = 0
local Letter_1, Letter_2, Letter_3, Letter_4, Letter_5 = "","","","",""

print("Please enter a number, note that it must be less than 8,308,824 as that is the highest number current programming can handle\n")
print("Enter Number: ")
Number = io.read("*n")     -- read a number
--print("\n\n")

if (Number > 8308824)
then
	print("The number you entered is too large")
	print("\nIt will be reduced to 8,308,824 which is the largest number")
	Number = 8308824
end

--print("\n\n")

if (Number > 24)
then
	Sec_2 = math.floor((Number - 1) / 24)
	Sec_1 = Number - (Sec_2 * 24)
else
	Sec_1 = Number
end

if (Sec_2 > 24)
then
	Sec_3 = math.floor((Sec_2 - 1) / 24)
	Sec_2 = Sec_2 - (Sec_3 * 24)	
end

if (Sec_3 > 24)
then
	Sec_4 = math.floor((Sec_3 - 1) / 24)
	Sec_3 = Sec_3 - (Sec_4 * 24)
end

if (Sec_4 > 24)
then
	Sec_5 = math.floor((Sec_4 - 1) / 24);
	Sec_4 = Sec_4 - (Sec_5 * 24);
end

Letter_1 = Greek(Sec_1)
Letter_2 = Greek(Sec_2)
Letter_3 = Greek(Sec_3)
Letter_4 = Greek(Sec_4)
Letter_5 = Greek(Sec_5)


print(Letter_5," ",Letter_4," ",Letter_3," ",Letter_2," ", Letter_1)
