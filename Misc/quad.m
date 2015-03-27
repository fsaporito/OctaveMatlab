function quad

clc

disp('This Program Calculate The Quadrate Of A Natural Number n Adding All The n Eaven Number')

% Inp
do	
	disp('')
	n=input('Input The Natural Number: ')
	if ( n <= 0 )
		disp ('error: the number is not natural !!!')
	end
until ( n>0 )
	
% Variables
q=0;
k=(2*n-1);

% Calculations
while (k!=1)
	q=q+k;
	k=k-2;
end

% Output
prinf ('Resultate : '),disp(q)

endfunction
