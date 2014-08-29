function perfect

clc

% Input
n=input("Insert A Natural Number To Know If It Is Perfect: ");

% Calculation
for k=1:((n-2)/2)
	mod(n,k) = 0
end

% Output
if n==k
	disp ("The Number Is Perfect")
else
	disp ("The Number Is Not Perfect !!!")
end

endfunction
