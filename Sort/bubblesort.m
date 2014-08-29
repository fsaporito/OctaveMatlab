function bubblesort

clc
 
% Definizione Matrice
r = input("inserisci numero righe: ")
for a=1:r
	V(a)=input(sprintf("m[%o]=",a));
endfor
disp ("Vettore V:  "),disp(V)
 
 
% Bubblesort
do
	 
	% Menu 
	disp("seleziona l''ordine richiesto : ")
	disp("")
	disp("1 ----> crescente")
	disp("2 ----> decrescente")
	s =input("Choice: ")
	
until (s == 1 | s == 2)

if s == 1
	for j=1:(r-1)
		for i= 1:(r-1)
			if V(i) > V(i+1)
					T = V(i);
					V(i) = V(i+1);
					V(i+1) = T;
			endif
		endfor 
		i = 1;
	endfor
	disp("Vettore Ordinato: "),disp(V)
endif
 
if s == 2
	for j=1:(r-1)
		for i=1:(r-1)
			if V(i) < V(i+1)
					T = V(i);
					V(i) = V(i+1);
					V(i+1) = T;
			endif
		endfor 
		i = 1;
	endfor
disp("Vettore Ordinato: "),disp(V)
endif

endfunction

