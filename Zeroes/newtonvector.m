function newtonvector

clc

disp("Questo Script Calcola gli Zeri Approssimati Di Una Funzione Polinomiale Data")
disp("")

% Inserimento Grado Polinomio
do
	n=input("Inserisci il grado del polinomio richiesto, positivo ed intero : ");
until ( n > 0 )

% Inserimento Coefficenti
disp ("")
disp("Inserisci I Coefficenti Partendo Dal Termine Noto : ")
for a=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori
	V(a)=input(sprintf("a[%o]=",a));
end

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
		
% Calcolo Derivata
% D(m*x^n) = m*n*x^(n-1)
D=polyderiv (V); 

do 
			
	% Funzione In Seed
	immagine_seed=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		funz=(V(c)*seed^(r)); % variabile temporanea
		immagine_seed=(imamgine_seed+funz); % variabile somma delle singole variabili temporanee
	end
	
	% Derivata In Seed
	derivata_seed=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		der=(D(c)*seed^(r)); % variabile temporanea
		derivata_seed=(derivata_seed+der); % variabile somma delle singole variabili temporanee
	end
	
	% Calcolo Punto D'intersezione Tra f'(x) E Asse X
	% x(0) = a - f(a)/f'(a)
	intersezione=( seed - (immagine_seed/derivata_seed ));
	
			
	% Immagine Intersezione
	INTERSEZIONE=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		med=(V(c)*seed^(r)); % variabile temporanea
		INTERSEZIONE=(INTERSEZIONE+med); % variabile somma delle singole variabili temporanee
	end
			
	seed=intersezione;
	
until ( abs(INTERSEZIONE) < precision )
		
% Visualizzazione Valore Intersezione
format long
printf ("Il valore approssimato dello zero e' : "),disp(intersezione)

disp ("")

endfunction



