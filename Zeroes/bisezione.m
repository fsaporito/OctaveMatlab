function bisezione

clc

disp("Questo Script Calcola gli Zeri Approssimati Di Una Funzione Data Di Terzo Grado")
disp("")

% Inserimento Coefficenti
a=input("Inserisci il coefficente dell'incognita' di terzo grado : ");

b=input("Inserisci il coefficente dell'incognita' di secondo grado : ");

c=input("Inserisci il coefficente dell'incognita' di primo grado : ");

d=input("Inserisci il coefficente del termine noto : ");

% Ciclo Per Il Calcolo Dello Zero
do

	clc
	
	% Ciclo Per L'Inserimento Del Valore Minimo Dell'Intervallo 
	do
		p=input("Inserisci il valore del minimo dell''intervallo : ");
	until ( p != 0 ) % Il Minimo Deve Essere Diverso Da Zero

	% Ciclo Per L'Inserimento Del Valore Massimo Dell'Intervallo 
	do
		q=input("Inserisci il valore del massimo dell'intervallo : ");
	until ( q != 0 ) % Il Minimo Deve Essere Diverso Da Zero

	% Calcolo Dell'Immagine Del Valore Minimo E Massimo
	P=( a*(p^3) + b*(p^2) + c*p + d ); % Minimo
	Q=( a*(q^3) + b*(q^2) + c*q + d ); % Massimo
	
	% Verifica Condizione Di Discordità Tra Massimo E Minimo
	if ( P*Q > 0 )
		disp("error: Le Immagini Dei Valori Devono Essere Discordi !!!")
		k=3;
	else
		% Ciclo Per L'Inserimento Della Precisione
		do
			precision=input("Inserisci Il valore di Epsilon, positivo e piccolo a piacere : ");
		until precision>0
		
		clc
		
		% Ciclo Per Il Calcolo Del Punto Medio
		disp("Calculating ...")
		
		do 
			
			P=( a*(p^3) + b*(p^2) + c*p + d ); % Immagine Minimo
			Q=( a*(q^3) + b*(q^2) + c*q + d ); % Immagine Massimo
			
			m=( (p+q)/2 ); % Calcolo Punto Medio Tra Minimo E Massimo
			M=( a*(m^3) + b*(m^2) + c*m + d ); % Immagine Punto Medio
			
			if ( M*P > 0 )
				p=m; % Sostituzione Del Minimo Con Il Punto Medio
			end
			
			if ( M*Q > 0 )
				q=m; % Sostituzione Del Massimo Con Il Punto Medio
			end
					
		until ( abs(M) < precision )
		
		k=1; % Valore Di Break Del Ciclo
		
	endif

until ( k < 2 )

% Visualizzazione Punto Medio
format long
printf ("Il valore approssimato dello zero e' : "),disp(m)

disp ("")

endfunction

