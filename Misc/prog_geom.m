function prog_geom

% Progressione Geometrica:
% Successione di numeri tale per cui il rapporto di due valori Successivi è sempre constante

clc

disp ("Questo Script Calcola La Somma Di Tutti I Termini Fino Ad Un Valore Prestabilito")
disp ("Di Una Progressione Geometrica Dati La Ragione E Il Valore Iniziale")

disp ("")

% Inserimento Valori
a(1)=input("Inserisci Il Valore Iniziale : ");
ragione=input("Inserisci La Ragione Della Progressione : ");
n=input("Inserisci Il Valore Massimo Della Progressione : ");

disp ("")

% Calcolo Somma Valori

somma=a(1);
b=2;
do
	a(b)=a(b-1)*ragione;
	somma=a(b)+a(b-1);
	b=(b+1);
until (a(b-1) > n)

printf ("Somma = "), disp(somma)

endfunction
