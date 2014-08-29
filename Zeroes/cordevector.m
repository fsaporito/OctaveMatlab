function cordevector

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
	
	% Inserimento Primo Punto
	do
		f=input("Inserisci il valore dell'ascissa del primo punto : ");
	until ( f != 0 ) % L'ascissa Del Punto Deve Essere Diversa Da Zero
	
	% Inserimento Secondo Punto
	do
		s=input("Inserisci il valore dell'ascissa del secondo punto : ");
	until ( s != 0 ) % L'ascissa Del Punto Deve Essere Diversa Da Zero

	% Immagine Primo Punto
	F=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		first=(V(c)*f^(r)); % variabile temporanea
		F=(F+first) % variabile somma delle singole variabili temporanee
	end
	
	% Immagine Secondo Punto
	S=0;
	for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
		r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
		second=(V(c)*s^(r)); % variabile temporanea
		S=(S+second) % variabile somma delle singole variabili temporanee
	end
	
	l=(F*S);
	disp(l)
	
	% Verifica Condizione Di Discordità Tra I Due Punti
	if ( F*S > 0 )
		disp("error: Le Immagini Dei Valori Devono Essere Discordi !!!")
		k=3;
	else
		% Ciclo Per L'Inserimento Della Precisione
		do
			z=input("Inserisci Il valore di Epsilon, positivo e piccolo a piacere : ");
		until z>0
		
		% Ciclo Per Il Calcolo Del Punto Medio
		disp("Calculating ...")
		
		do 
			
			% Immagine Primo Punto
			F=0;
			for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
				r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
				first=(V(c)*f^(r)); % variabile temporanea
				F=(F+first); % variabile somma delle singole variabili temporanee
			end 
	
			% Immagine Secondo Punto
			S=0;
			for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
				r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
				second=(V(c)*s^(r)); % variabile temporanea
				S=(S+second); % variabile somma delle singole variabili temporanee
			end
			
			% Calcolo Dell'Intersezione Tra La Retta Tra I Due Punti E L'asse X
			p=((f*(S - F) - s*(s - F))/(S - F));
			
			% Calcolo Immagine Intersezione
			P=0;
			for c=1:(n+1) % (n+1) perchè octave parte da 1 nel conto dei vettori <----|
				r=(c-1); % r=c-1 in quanto il grado arriva fino ad n       -----------|
				int=(V(c)*p^(r)); % variabile temporanea
				P=(P+int); % variabile somma delle singole variabili temporanee
			end
			
			if ( F*P > 0 )
				f=p; % Sostituzione Del Primo Punto Con Quello Nuovo
			end
			
			if ( S*P > 0 )
				s=p; % Sostituzione Del Secondo Punto Con Quello Nuovo
			end
			
		until ( abs(P) < z )
		
		k=1; % Valore Di Break Del Ciclo
		
	endif

until ( k < 2 )

% Visualizzazione Punto Medio
format long
printf ("Il valore approssimato dello zero e' : "),disp(p)

disp ("")

endfunction
