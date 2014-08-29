function plot_poly

clc

disp("Questo Script Disegna Una Funzione Polinomiale Data")
disp("")

% Inserimento Grado Polinomio
do
	n=input("Inserisci il grado del polinomio richiesto, positivo ed intero : ");
until ( n > 0 )

% Inserimento Coefficenti
disp ("")
disp("Inserisci I Coefficenti Partendo Dal Termine Noto : ")
for a=1:(n+1)
	V(a)=input(sprintf("a[%o]=",a));
end

% Punto Iniziale
x(1)=input("Inserisci Il Valore Iniziale Della Funzione : ");

% Numero Di Punti Rappresentati
do
	punti=input("Inserisci Il Numero Di Punti Da Rappresentare : ");
until punti>0

% Passo
do
	passo=input("Inserisci Il Passo Della Funzione : ");
until passo>0

% Calcolo Punti
for s=2:punti
	x(s)=x(s-1)+passo;
	k=0;
	for c=1:(n+1)
		r=(c-1);
		b=(V(c)*(x(s))^(r));
		k=(k+b);
	end
	y(s)=k;
end

% Grafico
plot (x,y,"-")

endfunction
