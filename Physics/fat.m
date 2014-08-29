function [f]=fat(n)
	if n==0
		f=1; % fat(0)=1
	else
		f=n*fat(n-1); % definition of factorial number
	end
endfunction

