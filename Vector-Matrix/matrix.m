function matrix

% Creazione  matrice

r=input('Scrivi il numero di righe della matrice: ')
c =input('Scrivi il numero di colonne della matrice: ')

for a = 1:r
	for b = 1:c
		V(a,b)=input(sprintf('%o,%0]=',a,b));
	endfor
endfor

disp('La matrice selezionata e'': ')
disp(V)
