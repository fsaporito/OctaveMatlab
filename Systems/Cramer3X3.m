function Cramer3X3

% linear system with 3 equation and 3 incognitas

clc

disp("aX + bY + cZ = d")
disp("eX + fY + gZ = h")
disp("iX + lY + mZ = n")
disp("")
disp("")

a = input("a: ")
b = input("b: ")
c = input("c: ")
d = input("d: ")
e = input("e: ")
f = input("f: ")
g = input("g: ")
h = input("h: ")
i = input("i: ")
l = input("l: ")
m = input("m: ")
n = input("n: ")

A = [a,b,c; e,f,g; i,l,m];
disp("la matrice ridotta del sistema e'': ")
disp(A)
disp ("")

b = [d,h,n]
disp("Il vettore dei coefficienti e'': ")
disp(b)
disp("")

% Calcolo Determinanti

D = (a*f*m + b*g*i + c*e*l - i*f*c - l*g*a - m*e*b);

if D == 0
	disp("Il determinane della matrice e'' uguale a 0!!!!!!!!")
else
	disp("Il determinante della matrice incompleta A e'':  "),disp(D)

	X = (d*f*m + b*g*n + c*h*l - n*f*c - l*g*d - m*h*b);
	Y = (a*h*m + d*c*e*n - i*h*c - n*g*a - m*e*d);
	Z = (a*f*n + b*h*i + d*e*l - i*f*d - l*h*a - n*e*b);

	% Calcolo Incognite
	x = (X/D);
	y = (Y/D);
	z = (Z/D);
	disp("I valori delle incognite sono: ")
	disp("x = "),disp(x)
	disp("y = "),disp(y)
	disp("z = "),disp(z)
endif

endfunction