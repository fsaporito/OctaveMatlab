function res_eq

% Resistenza Equivalente In Serie
% (1/Req) = (1/R1) + (1/R2) ----> Req = R1*R2/(R2+R1)

% Resistenza Equivalente In Parallelo
% Req = R1 + R2

clc

disp ("Questo Script Calcola La Resistenza Equivalente Rispetto Ad Un Circuito")
disp ("Con Le Resistenze In Serie o In Parallelo")
disp ("")

% Inserimento Dati
do
	n=input("Inserisci il numero di resistenze : ");
until ( n > 0 )

disp ("")

disp("Inserisci I Valori Delle Resistenze : ")
for r=1:n
	R(r)=input(sprintf("r[%o]=",r));
end

% Menu
serie=1
parallelo=2
do
	clc
	disp("Optioni : ")
	disp("")
	disp("1) Resistenze In Serie")
	disp("2) Resistenze In Parallelo")
	disp("")
	cho=input("Inserisci 1 o 2 In Base Alla Tua Scelta : ");
until ( cho == serie || cho == parallelo )

Req=R(1);

if ( cho == serie ) % Calcolo Resistenza Equivalente In Serie
	for r=2:n
		Req = R(r) + Req;
	end
end

if ( cho == parallelo ) % Calcolo Resistenza Equivalente In Parallelo
	for r=2:n
		Req = R(r)*Req/(Req+R(r));
	end
end

disp("")
printf ("Resistenza Equivalente = "), disp(Req)

endfunction
