function name_reverse

clc

disp("Questo Script Scrive Il Nome In Input Al Contrario")
disp ("")

% Inserimento Nome
name=input("Inserisci Il Nome : ", "s"); % Inserimento nome
charlen=length (name); % calcolo lunghezza nome
disp ("")

% Inversione Nome
n=1;
for i=n:charlen
	reverse(i)=name(charlen - i + 1); % Il primo valore del nome invertito è uguale all'ultimo del nome originale
end

% Display Nome Invertito
printf ("Nome Invertito : "),disp(reverse)

endfunction
