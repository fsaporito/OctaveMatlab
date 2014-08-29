function equazionesecondogrado

clc

disp ("Questo Programma Calcola Le Soluzioni Di")
disp ("Un'Equazione Di Secondo Grado")

% Inserimento Coefficenti

do
	disp ("")
	a=input("Inserisci Il Coefficente Del Termine Di Secondo Grado : ");
	b=input("Inserisci Il Coefficente Del Termine Di Primo Grado : ");
	c=input("Inserisci Il Coefficente Del Termine Noto : ");
	
	discriminante=(b^2 - 4*a*c);
	
	if (discriminante < 0 )
		disp ("error: Il discriminante è minore di zero !!!")
		disp ("Prova Con Un'Altra Equazione ...")
	end
until ( discriminante >= 0 )

% Calcolo Soluzioni
if ( discriminante == 0 ) % Una soluzione
	soluzione=(-b + sqrt(discriminante))/(2*a);
	printf ("La Soluzione e' : "),disp(soluzione)
end

if ( discriminante != 0 ) % Due soluzioni
	soluzione1=(-b + sqrt(discriminante))/(2*a);
	soluzione2=(-b - sqrt(discriminante))/(2*a);
	printf ("Prima Soluzione  : "),disp(soluzione1)
	printf ("Seconda Soluzione  : "),disp(soluzione2)
end

endfunction
