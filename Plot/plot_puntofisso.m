function plot_puntofisso

clc

disp("Questo Script Calcola La Distribuzione Dei Punti Derivati Dalla")
disp("Conversione Di Un Nome Dato Di 12 Lettere")

disp("")

% Inserimento Nome
do
	m=input("Inserisci Il Nome Desiderato Da 12 Lettere : ","s");
	b=length (m); % Calcolo Lunghezza nome
	if b != 12 % Errore Per Lunghezze Diverse Da 12
		disp("error : il nome deve essere di 12 caratteri !!!!!!")
	end
until b==12

% Conversione Nome In Ascii
for q=1:12
	a(q)=toascii (m(q)); % Conversione
	b(q)=a(q)*0.01; % Scala Risultato
end

% Inserimento Casuale Dei Punti Di partenza
x(1)=rand+10*rand+rand*rand-22*rand;
y(1)=x(1);

disp("")

% Inserimento Del Numero Dei Punti Da Rappresentare
do
	n=input("Inserisci Il Numero Di Punti Da Rappresentare : ");
until (n>0)

% Calcolo Dei Punti
for i=2:n
	x(i)=b(1)+b(2)*x(i-1)+b(3)*x(i-1)*x(i-1)+b(4)*x(i-1)*y(i-1)+b(5)*y(i-1)+b(6)*y(i-1)*y(i-1);
	y(i)=b(7)+b(8)*x(i-1)+b(9)*x(i-1)*x(i-1)+b(10)*x(i-1)*y(i-1)+b(11)*y(i-1)+b(12)*y(i-1)*y(i-1);
end

disp("")
disp("Now Plotting It All !!!!!!!")

% Grafico
plot (x,y,"*")

endfunction
