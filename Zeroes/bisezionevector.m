function bisezionevector

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

% Ciclo Per Il Calcolo Dello Zero
do

	clc
	
	% Ciclo Per L'Inserimento Del Valore Minimo Dell'Intervallo 
	do
		p=input("Inserisci il valore del minimo dell'intervallo : ");
	until ( p != 0 ) % Il Minimo Deve Essere Diverso Da Zero
	
	% Ciclo Per L'Inserimento Del Valore Massimo Dell'Intervallo 
	do
		q=input("Inserisci il valore del massimo dell'intervallo : ");
	until ( q != 0 ) % Il Minimo Deve Essere Diverso Da Zero

	% Calcolo Dell'Immagine Del Valore Minimo E Massimo
	
	% Minimo
	P=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		min=(V(c)*p^(r)); % variabile temporanea
		P=(P+min); % variabile somma delle singole variabili temporanee
	end
	
	% Massimo
	Q=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		max=(V(c)*q^(r)); % variabile temporanea
		Q=(Q+max); % variabile somma delle singole variabili temporanee
	end
	
	% Verifica Condizione Di Discordità Tra Massimo E Minimo
	if ( P*Q > 0 )
		disp("error: Le Immagini Dei Valori Devono Essere Discordi !!!")
		k=3;
	else
		% Ciclo Per L'Inserimento Della Precisione
		do
			z=input("Inserisci Il valore di Epsilon, positivo e piccolo a piacere : ");
		until z>0
		
		clc
		
		% Ciclo Per Il Calcolo Del Punto Medio
		disp("Calculating ...")
		
		do 
			% Minimo
			P=0;
			for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
				r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
				min=(V(c)*p^(r)); % variabile temporanea
				P=(P+min); % variabile somma delle singole variabili temporanee
			end
	
			% Massimo
			Q=0;
			for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
				r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
				max=(V(c)*q^(r)); % variabile temporanea
				Q=(Q+max); % variabile somma delle singole variabili temporanee
			end 
			
			% Calcolo Punto Medio Tra Minimo E Massimo
			m=( (p+q)/2 );
			
			% Immagine Punto Medio
			M=0;
			for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
				r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
				med=(V(c)*m^(r)); % variabile temporanea
				M=(M+med); % variabile somma delle singole variabili temporanee
			end
			
			if ( M*P > 0 )
				p=m; % Sostituzione Del Minimo Con Il Punto Medio
			end
			
			if ( M*Q > 0 )
				q=m; % Sostituzione Del Massimo Con Il Punto Medio
			end
					
		until ( abs(M) < z )
		
		k=1; % Valore Di Break Del Ciclo
		
	endif

until ( k < 2 )

% Visualizzazione Punto Medio
format long
printf ("Il valore approssimato dello zero e' : "),disp(m)

disp ("")

endfunction
