function VOLUMESPHERE

% This program calculates the volume of a sphere, given the radix

clc

disp('This program calculates the volume of a sphere, given the radix')
disp('')

% Input
r=input('Input the radix:');

% Calculation
V=4/3*pi*r^3;

% Output
printf ('Volume': '),disp(V)
 
endfunction
