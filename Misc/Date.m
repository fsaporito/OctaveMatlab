function Date

% This Script Verify A Given Date
clc

% Input Date
g=input('Insert The Day Number : ');
m=input('Insert The Month Number : ');
a=input('Insert The Year Number : ');

if (m > 12) % 12 month
	disp ('error: the selected month does not exist !!!')
elseif (m==1|3|5|7|8|10|12)  
   if (g<32) % these month have 31 days
		disp ('Date Is Valid') 
   else disp ('error: the selected day does not exist !!!')
   end
elseif (m==4|6|9|11) 
       if (g<31) % these month have 30 days
			disp ('Date Is Valid')
	   else 
			disp ('error: the selected day does not exist !!!')
	   end
elseif (m==2)
       if (g<30) % Febrary has 28 or 29 days
			disp ('Date Is Valid')
	   else 
			disp ('error: the selected day does not exist !!!')
	   end
else 
	disp ('error: Date Is Not Valid !!!')
end

endfunction
