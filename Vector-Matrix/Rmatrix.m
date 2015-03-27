function Rmatrix
	
clc
	
n = input('Scrivere l''ordine della matrice richiesta: ')

matrix=floor(100*rand(n,n));
for j = 1:n
	for i = 1:j
		a(i,j)=matrix(i,j)
    end
end
	
endfunction
