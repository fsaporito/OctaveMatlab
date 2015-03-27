function intensity

% Intensità di corrente in fase di carica :
% I = (V/R)*e(-t/R*C)

clc

disp ('Questo Script Calcola L''intensità Di Corrente In Un Circuito')
disp ('Con Dei Condensatori In Fase Di Carica')
disp ('')

% Inserimento Dati
R=input('Inserisci Il Valore Della Resistenza : ');
C=input('Inserisci Il Valore Della Capacità Del Condensatore : ');
V=input('Inserisci Il Voltaggio Della Batteria : ');
t=input('Inserisci Il Tempo Passato Dalla Chiusura Del Circuito : ');

% Calcolo Numero Di Nepero
nep=0;
for i=1:100 
	E(i)=(1/fat(i-1));
	nep=(E(i)+nep);
end

% Calcolo Corrente
I=(V/R)*nep^(-t/R*C);

% Output Risultato
format long
printf ('I (A) : '), disp(I)

endfunction
