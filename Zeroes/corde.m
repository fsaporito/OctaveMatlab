function corde

clc

disp('Questo Script Calcola gli Zeri Approssimati Di Una Funzione Data Di Quinto Grado')
disp('')

% Inserimento Coefficenti
a=input('Inserisci il coefficente dell''incognita'' di quinto grado : ');

b=input('Inserisci il coefficente dell''incognita'' di quarto grado : ');

c=input('Inserisci il coefficente dell''incognita'' di terzo grado : ');

d=input('Inserisci il coefficente dell''incognita'' di secondo grado : ');

e=input('Inserisci il coefficente dell''incognita'' di primo grado : ');

g=input('Inserisci il coefficente del termine noto : ');

do

	clc
	
	% Inserimento Primo Punto
	do
		f=input('Inserisci il valore dell''ascissa del primo punto : ');
	until ( f ~= 0 ) % L'ascissa Del Punto Deve Essere Diversa Da Zero

	% Inserimento Secondo Punto
	do
		s=input('Inserisci il valore dell''ascissa del secondo punto : ');
	until ( s ~= 0 ) % L'ascissa Del Punto Deve Essere Diversa Da Zero

	% Immagine Primo Punto
	F=( a*(f^5) + b*(f^4) + c*(f^3) + d*(f^2) + e*f + g )
	
	% Immagine Secondo Punto
	S=( a*(s^5) + b*(s^4) + c*(s^3) + d*(s^2) + e*s + g )

	% Verifica Condizione Di Discordità Tra I Due Punti
	if ( F*S > 0 )
		disp('error: Le Immagini Dei Valori Devono Essere Discordi !!!')
		k=3;
	else
		% Ciclo Per L'Inserimento Della Precisione
		do
			z=input('Inserisci Il valore di Epsilon, positivo e piccolo a piacere : ');
		until z>0
		
		% Ciclo Per Il Calcolo Del Punto Medio
		disp('Calculating ...')
		
		do 
			
			% Immagine Primo Punto
			F=( a*(f^5) + b*(f^4) + c*(f^3) + d*(f^2) + e*f + g );
	
			% Immagine Secondo Punto
			S=( a*(s^5) + b*(s^4) + c*(s^3) + d*(s^2) + e*s + g );
			
			% Calcolo Dell'Intersezione Tra La Retta Tra I Due Punti E L'asse X
			p=((f*(S - F) - s*(s - F))/(S - F));
			
			% Calcolo Immagine Intersezione
			P=( a*p^5 + b*p^4 + c*p^3 + d*p^2 + e*p + g );
			
			if ( F*P > 0 )
				f=p; % Sostituzione Del Primo Punto Con Quello Nuovo
			end
			
			if ( S*P > 0 )
				s=p; % Sostituzione Del Secondo Punto Con Quello Nuovo
			end
			
		until ( abs(P) < 1 )
		
		k=1; % Valore Di Break Del Ciclo
		
	end
	
until ( k < 2)

% Visualizzazione Punto Medio
format long
printf ('Il valore approssimato dello zero e'' : '),disp(p)

disp('')

endfunction

