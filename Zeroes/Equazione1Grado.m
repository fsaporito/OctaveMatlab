function Equazione1grado

clc

% Input
a=input('mmetti i coefficenti della x: ');
b=input('Immetti il coefficente del termine noto: ');
disp('')

if ( a ~= 0)
   x=-b/a;
   format rat
   printf ('Lequazione è possibile e determinata, la soluzione è: '),disp(x)
else 
   if b==0
      disp('L''equazione è impossibile')
   else
      disp('L''equazione è indeterminata')
   end
end

endfunction
