function FIBONACCI

% This Scripts Write The Number In The Fibonacci's Succesion At A Given Position

clc

% Input
a=input('Write The Position Requested: ');

% Number Calculation
[f]=fib(a);

% Output
printf ('The Requested Number Is: '),disp(f)
