function integrazione

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

% Inserimento Del Valore Minimo Dell'Intervallo 
	a=input("Inserisci il valore del minimo dell'intervallo : ");

% Inserimento Del Valore Massimo Dell'Intervallo 
	b=input("Inserisci il valore del massimo dell'intervallo : ");
	
% Inserimento Numero Intervalli
	intervalli=input("Inserisci Il Numero Di Intervalli : ");
	
% Menu
choice=0;
rettangoli=1;
trapezi=2;
parabole=3;
do
	clc
	printf ("Opzioni : \n\n")
	printf ("1) Metodo Dei Rettangoli\n")
	printf ("2) Metodo Dei Trapezi\n")
	printf ("3) Metodo Delle Parabole\n\n")
	choice=input("Inserisci 1, 2 o 3 In Base Alla Tua Scelta : ");
until ( choice == rettangoli || choice == trapezi || choice == parabole)

if [ choice == rettangoli ]
	
	base = abs((b - a))/intervalli;
	
	X(1) = a;
	Y(1) = 0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		funz = (V(c)*X(1)^(r)); % variabile temporanea
		Y(1) = (Y(1)+funz); % variabile somma delle singole variabili temporanee
	end
	
% Calcolo Integrale Superiore E Inferiore Primo Punto
	integrale_inferiore = base*Y(1);
	integrale_superiore = 0;
		
	for i=2:(intervalli+1)		
		X(i) = X(i-1) + base;
		Y(i) = 0;
		for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
			r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
			funz = (V(c)*X(i)^(r)); % variabile temporanea
			Y(i) = (Y(i)+funz); % variabile somma delle singole variabili temporanee
		end
		
		if [ i != (intervalli+1) ]
			integrale_inferiore = integrale_inferiore + (base * Y(i));
		end
		
		integrale_superiore = integrale_superiore + (base * Y(i));
		
	end		
	
	integrale = (integrale_superiore + integrale_inferiore) / 2;

end

if [ choice == trapezi ]

% Calcolo Base
	base = abs((b - a))/intervalli;
	
% Valore Funzione In a
	funz_a=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		funz = (V(c)*a^(r)); % variabile temporanea
		funz_a = (funz_a+funz); % variabile somma delle singole variabili temporanee
	end

% Valore Funzione In b	
	funz_b=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		funz = (V(c)*b^(r)); % variabile temporanea
		funz_b = (funz_b+funz); % variabile somma delle singole variabili temporanee
	end

% Calcolo Primo Punto 	
	X(1) = a+base;
	Y(1) = 0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		funz = (V(c)*X(1)^(r)); % variabile temporanea
		Y(1) = (Y(1)+funz); % variabile somma delle singole variabili temporanee
	end
	
% Calcolo Integrale Primo Punto
	integrale = base*(((funz_b + funz_a)/2) + Y(1));

% Calcolo Punto X(i)			
	for i=2:(intervalli-1)		
		X(i) = X(i-1) + base; % Definizione X(i)
		Y(i) = 0;
		for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
			r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
			funz = (V(c)*X(i)^(r)); % variabile temporanea
			Y(i) = (Y(i)+funz); % variabile somma delle singole variabili temporanee
		end
		
% Calcolo Integrale Intervallo
		integrale = integrale + (base * Y(i));
		
	end		

end

if [ choice == parabole ]
	
% Calcolo Base
	base = (abs(b - a))/intervalli;

% H
	H = ((b-a)/2*n);
	
% Valore Funzione In a
	funz_a=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		funz = (V(c)*a^(r)); % variabile temporanea
		funz_a = (funz_a+funz); % variabile somma delle singole variabili temporanee
	end

% Valore Funzione In b	
	funz_b=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		funz = (V(c)*b^(r)); % variabile temporanea
		funz_b = (funz_b+funz); % variabile somma delle singole variabili temporanee
	end
		
% Sommatoria Indice Dispari
	S_dispari = 0;
	for i=1:(intervalli-1)
		X(i)= a + (2*i+1)*H;
		Y(i) = 0;
		for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
			r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
			funz = (V(c)*X(i)^(r)); % variabile temporanea
			Y(i) = (Y(i)+funz); % variabile somma delle singole variabili temporanee
		end
		S_dispari = S_dispari + Y(i);
	end

% Sommatoria Indice Pari
	S_pari = 0;
	for i=1:(intervalli-1)
		X(i) = a + (2*i*H);
		Y(i) = 0;
		for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
			r = (c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
			funz = (V(c)*X(i)^(r)); % variabile temporanea
			Y(i) = (Y(i)+funz); % variabile somma delle singole variabili temporanee
		end	
		S_pari = S_pari + Y(i);
	end

% Calcolo Integrale
	%integrale = (H/3)*(funz_a + 2*S_dispari + 4*S_pari + funz_b );
	integrale = (funz_a + 2*S_dispari + 4*S_pari + funz_b );

end

clc
printf ("Estremo a : "),disp(a)
printf ("F(a) : "),disp(funz_a)
printf ("Estremo b : "),disp(b)
printf ("F(b) : "),disp(funz_b)
printf ("Numero Intervalli : "),disp(intervalli)
format long
printf ("S_dispari : "),disp(S_dispari)
printf ("S_pari : "),disp(S_pari)
printf ("Integrale : "),disp(integrale)

endfunction
