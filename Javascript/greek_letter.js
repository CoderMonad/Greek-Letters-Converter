//Starts Functions and changes results html
function Start(form) {
    console.log("Start Function Started");

    var nNumber = parseInt(form.Box_Number.value, 10);
    console.log(nNumber);
    var Sec_1 = 0;
    var Sec_2 = 0;
    var Sec_3 = 0;
    var Sec_4 = 0;
    var Sec_5 = 0;

    var Letter_1 = "";
    var Letter_2 = "";
    var Letter_3 = "";
    var Letter_4 = "";
    var Letter_5 = "";
    var Full = "";






    if (nNumber > 24) {
        Sec_2 = Math.floor((nNumber - 1) / 24);
        Sec_1 = nNumber - (Sec_2 * 24);
    } else {
        Sec_1 = nNumber;
    }

    if (Sec_2 > 24) {
        Sec_3 = Math.floor((Sec_2 - 1) / 24);
        Sec_2 = Sec_2 - (Sec_3 * 24);
    }

    if (Sec_3 > 24) {
        Sec_4 = Math.floor((Sec_3 - 1) / 24);
        Sec_3 = Sec_3 - (Sec_4 * 24);
    }

    if (Sec_4 > 24) {
        Sec_5 = Math.floor((Sec_4 - 1) / 24);
        Sec_4 = Sec_4 - (Sec_5 * 24);
    }


    console.log("Numbers spilt into sections");
    console.log(Sec_1);
    console.log(Sec_2);
    console.log(Sec_3);
    console.log(Sec_4);
    console.log(Sec_5);

    Letter_1 = Greek(Sec_1);
    Letter_2 = Greek(Sec_2);
    Letter_3 = Greek(Sec_3);
    Letter_4 = Greek(Sec_4);
    Letter_5 = Greek(Sec_5);

    console.log("Numbers converted");
    console.log(Letter_1);
    console.log(Letter_2);
    console.log(Letter_3);
    console.log(Letter_4);
    console.log(Letter_5);


    Full = Letter_5 + " " + Letter_4 + " " + Letter_3 + " " + Letter_2 + " " + Letter_1;

    console.log("String Created");
    console.log(Full);
    
    var element = document.getElementById("result");

    element.innerHTML = Full;


    //console.log("String Displayed");
    return false;
}
//Changes Number to Greek Letter
function Greek(n) {
    //console.log("Greek Function Started");
    console.log(n);
    var Letter = "";
    if (n == 1) {
        Letter = "Alpha";
        console.log("You get an Alpha");
    } else if (n == 2) {
        Letter = "Beta";
        console.log("You get an Beta");
    } else if (n == 3) {
        Letter = "Gamma";
        console.log("You get an Gamma");
    } else if (n == 4) {
        Letter = "Delta";
        console.log("You get an Delta");
    } else if (n == 5) {
        Letter = "Epsilon";
        console.log("You get an Epsilon");
    } else if (n == 6) {
        Letter = "Zeta";
        console.log("You get an Zeta");
    } else if (n == 7) {
        Letter = "Eta";
        console.log("You get an Eta");
    } else if (n == 8) {
        Letter = "Theta";
        console.log("You get an Theta");
    } else if (n == 9) {
        Letter = "Iota";
        console.log("You get an Iota");
    } else if (n == 10) {
        Letter = "Kappa";
        console.log("You get an Kappa");
    } else if (n == 11) {
        Letter = "Lambda";
        console.log("You get an Lambda");
    } else if (n == 12) {
        Letter = "Mu";
        console.log("You get an Mu");
    } else if (n == 13) {
        Letter = "Nu";
        console.log("You get an Nu");
    } else if (n == 14) {
        Letter = "Xi";
        console.log("You get an Xi");
    } else if (n == 15) {
        Letter = "Omicron";
        console.log("You get an Omicron");
    } else if (n == 16) {
        Letter = "Pi";
        console.log("You get an Pi");
    } else if (n == 17) {
        Letter = "Rho";
        console.log("You get an Rho");
    } else if (n == 18) {
        Letter = "Sigma";
        console.log("You get an Sigma");
    } else if (n == 19) {
        Letter = "Tau";
        console.log("You get an Tau");
    } else if (n == 20) {
        Letter = "Upsilon";
        console.log("You get an Upsilon");
    } else if (n == 21) {
        Letter = "Phi";
        console.log("You get an Phi");
    } else if (n == 22) {
        Letter = "Chi";
        console.log("You get an Chi");
    } else if (n == 23) {
        Letter = "Psi";
        console.log("You get an Psi");
    } else if (n == 24) {
        Letter = "Omega";
        console.log("You get an Omega");
    } else {
        Letter = "";
        console.log("You get an Error");
    }

    return Letter;
}