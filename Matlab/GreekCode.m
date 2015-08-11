%Author: Patrick Rye
%Date: 4/14/2015
%Input: A Number that has to be less than 24^3 or 13,824
%Output: A string that can contain up to three greek letters
%Purpose: None really, just kinda bored because I already know everything
%           talked about today.

function result = GreekCode(num)
%Hi
%clear
%clc
Sec_1 = 0;
Sec_2 = 0;
Sec_3 = 0;

%Number = 1000;

%Number = input(prompt);

Number = num;

if Number > 14424
    error('Number too large')
end

if Number >= 24
    Sec_2 = floor((Number - 1)/24);
    Sec_1 = Number - (Sec_2 * 24);
else
    Sec_1 = Number;
end

if Sec_2 >= 24
    Sec_3 = floor((Sec_2 - 1)/24);
    Sec_2 = Sec_2 - (Sec_3 * 24);
end

Letter_1 = greek(Sec_1);
Letter_2 = greek(Sec_2);
Letter_3 = greek(Sec_3);

    function letter = greek(n)
        lettertemp = 'ERROR';
        switch n
            case {0}
                lettertemp = ' ';
            case {1}
                lettertemp = 'Alpha';
            case {2}
                lettertemp = 'Beta';
            case {3}
                lettertemp = 'Gamma';
            case {4}
                lettertemp = 'Delta';
            case{5}
                lettertemp = 'Eplison';
            case{6}
                lettertemp = 'Zeta';
            case {7}
                lettertemp = 'Eta';
            case {8}
                lettertemp = 'Theta';
            case {9}
                lettertemp = 'Iota';
            case{10}
                lettertemp = 'Kappa';
            case {11}
                lettertemp = 'Lambda';
            case {12}
                lettertemp = 'Mu';
            case {13}
                lettertemp = 'Nu';
            case {14}
                lettertemp = 'Xi';
            case {15}
                lettertemp = 'Omicron';
            case {16}
                lettertemp = 'Pi';
            case {17}
                lettertemp = 'Rho';
            case {18}
                lettertemp = 'Sigma';
            case {19}
                lettertemp = 'Tau';
            case {20}
                lettertemp = 'Upslion';
            case {21}
                lettertemp = 'Phi';
            case {22}
                lettertemp = 'Chi';
            case {23}
                lettertemp = 'Psi';
            case {24}
                lettertemp = 'Omega';
            otherwise
                lettertemp = 'ERROR';
        end
        letter = lettertemp;
    end
result = strcat(Letter_3,{' '},Letter_2,{' '},Letter_1);
end