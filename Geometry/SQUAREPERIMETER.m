function PerimetroQuadrato

% This program calculates the perimeter and the diagonal of a square given the area

A=input('Area: ');

l=sqrt(A);
p=4*l;
d=sqrt(2)*l;

disp('Perimeter: '), disp(p)
disp('Diagonal: '), disp(d)

endfunction
