function DISPARI

clc

disp("This Script Output The Number Of Uneven Numbers Minor Than Input Expect Seven Multiplies")
disp ("")

k=input("Insert The Maximus Value : ");
n=0;

for I=1:(k-1)
    if mod (I,7) !=0 & mod(I,2)==1
	     disp(I)
         n=n+1;
	end
end

disp('I numeri dispari minori di 100 che non sono multipli di 7 sono: ')
disp(n)

