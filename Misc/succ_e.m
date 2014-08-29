function succ_e

% e = sommatoria da n=0 a n=infinito di 1/n! (n! ---> fattoriale)

clc

disp ("Questo Script Calcola Il Valore Del Numero Di Nepero e, definito come : ")
disp ("e = sommatoria da n=0 a n=infinito di 1/n! (n! ---> fattoriale)")

disp ("")

% Inserimento Del Coefficente Richiesto
n=input("Inserisci Il Numero Di Valori Della Successione Per Calcolare e : ");

nep=0;

% Calcolo Numero Di Nepero
for i=1:(n+1)
	E(i)=(1/fat(i-1));
	nep=(E(i)+nep);
end

% Output
format long
printf ("e = "), disp(nep)

endfunction
