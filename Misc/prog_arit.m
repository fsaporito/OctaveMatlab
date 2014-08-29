function prog_arit

% Progressione Aritmetica:
% Successione di numeri tale per cui la differenza di due valori Successivi è sempre constante

clc

disp ("Questo Script Calcola La Somma Di Tutti I Termini Fino Ad Un Valore Prestabilito")
disp ("Di Una Progressione Aritmetica Dati Il Passo E Il Valore Iniziale")

disp ("")

% Inserimento Valori
a(1)=input("Inserisci Il Valore Iniziale : ");
passo=input("Inserisci Il Passo Della Progressione : ");
n=input("Inserisci Il Valore Massimo Della Progressione : ");

disp ("")

% Calcolo Somma Valori

somma=a(1);
b=2;
do
	a(b)=a(b-1)+passo;
	somma=(a(b) + somma);
	b=(b+1);
until (a(b-1) > n)

printf ("Somma = "), disp(somma)

endfunction
