function Vert

% Questo Script Calcola Il Vertice Di Una Parabola E il Suo Simmetrico Rispetto All'Origine
clc

% Inserimento Coefficenti
a=input('Il valore di a e'': ')
b=input('Il valore di b e'': ')
c=input('Il valore di c e': ')

% Calcolo Vertice
X=-2*a/b;
Y=-(b^2-4*a*c)/(4*a);

% Calcolo Simmetrico
h=-X;
k=-Y;

% Output
disp ('')
disp('Le coordinate del vertice sono: '),disp (X),disp (Y)
disp ('')
disp('Le coordinate del simmetrico del vertice sono: '),disp (h),disp (k)
