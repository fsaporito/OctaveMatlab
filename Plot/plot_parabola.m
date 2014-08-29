function plot_parabola

clc

disp("Questo Script Disegna Una Retta Dall'Equazione Data")
disp("")

% Inserimento Coefficenti
a=input("Inserisci Il Coefficente Del Termine Di Secondo grado : ")
b=input("Inserisci Il Coefficente Del Termine Di Primo Grado : ")
c=input("Inserisci Il Termine Noto : ")

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
	y(s)=a*x(s)*x(s)+b*x(s)+c;
end

% Grafico
plot (x,y,"-")

endfunction
