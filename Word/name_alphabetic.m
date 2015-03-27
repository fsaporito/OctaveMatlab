function name_alphabetic

clc

disp('Questo Script Scrive Il Nome In Input Sostituendo Ad Ogni Lettera La Sua Successiva Nell''ordine Alfabetico')
disp('')

% Inserimento Nome
name=input('Inserisci Il Nome : ', 's'); % Inserimento nome
charlen=length (name); % calcolo lunghezza nome
disp ('')

% Sostituzioni Lettere
for i=1:charlen
	ascii=toascii(name(i)); % lettera ---> ascii
	if ( strcmp(ascii,'122') % Trasformazione z (ASCII=122) in a
		name_mod(i)='a';
	else	
		new_ascii=ascii+1; % aumento di un valore nel codice ascii
		name_mod(i)=setstr(new_ascii); % new_ascii ---> lettera
		%warning: setstr is obsolete and will be removed from a future version of Octave; please use char instead
	end	
end

% Display Nome Modificato
disp('Nome Modificato : '),disp(name_mod)

endfunction
