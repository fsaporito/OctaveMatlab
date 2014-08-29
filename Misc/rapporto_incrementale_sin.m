function rapporto_incr_sin

% rapporto incrementale:
% ( f(x+h) - f(x) ) / h

clc

disp("Questo Script Calcola I Valori Del Rapporto Incrementale Per")
disp("y=sinx con 0 < X < PiGreco, h=0.001") 
disp("")

% Inserimento Valori
passo=input("Inserisci Il passo : ");
h=input("Inserisci L'incremento (h) : ");

% Calcolo Valori
x(1)=0;
rapp(1)=(( sin(0+h) - sin(0) )/h);
i=2;
do
	x(i)=x(i-1)+passo;
	rapp(i)=(( sin(x(i)+h) - sin(x(i)) )/h);
	i=i+1;
until ( x(i-1) > pi )

% Plot
disp ("Plotting ...")
plot(x,rapp,"*")

endfunction
