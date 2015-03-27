function newton

clc

disp("Questo Script Calcola gli Zeri Approssimati Di Una Funzione Data Di Sesto Grado")
disp("")

% Inserimento Coefficenti
a=input("Inserisci il coefficente dell'incognita' di sesto grado : ");

b=input("Inserisci il coefficente dell'incognita' di quinto grado : ");

c=input("Inserisci il coefficente dell'incognita' di quarto grado : ");

d=input("Inserisci il coefficente dell'incognita' di terzo grado : ");

e=input("Inserisci il coefficente dell'incognita' di secondo grado : ");

f=input("Inserisci il coefficente dell'incognita' di primo grado : ");

g=input("Inserisci il coefficente del termine noto : ");

disp ("")
	
% Ciclo Per L'Inserimento Del Valore Minimo Dell'Intervallo 
do
	seed=input("Inserisci Il Seme : ");
until ( seed != 0 ) % Il Seme Deve Essere Diverso Da Zero

% Ciclo Per L'Inserimento Della Precisione
do
	precision=input("Inserisci Il valore di Epsilon, positivo e piccolo a piacere : ");
until precision>0
		
clc
	
% Ciclo Per Il Calcolo Del Punto Medio
disp("Calculating ...")
		
do 
			
	% Funzione In Seed
	immagine_seed=a*(seed^6) + b*(seed^5) + c*(seed^4) + d*(seed^3) + e*(seed^2) + f*seed + g;
	
	% Derivata In Seed
	derivata_seed=6*a*(seed^5) + 5*b*(seed^4) + 4*c*(seed^3) + 3*d*(seed^2) + 2*e*seed + f;
	
	% x(0) = a - f(a)/f'(a)
	zero=( seed - (immagine_seed/derivata_seed) );
	
	% Immagine Punto D'Intersezione
	ZERO=( a*(m^6) + b*(m^5) + c*(m^4) + d*(m^3) + e*(m*2) + f*m + g ); 
	
	seed=zero;
	
until ( abs(ZERO) < precision )
		
% Visualizzazione Valore Intersezione
format long
printf ("Il valore approssimato dello zero e' : "),disp(zero)

disp ("")

endfunction

