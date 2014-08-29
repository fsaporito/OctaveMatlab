function name_vocal

clc

disp("Questo Script Scrive Il Nome In Input Cambiando Le Vocali Con Una Parola Data E La Vocale")
disp("es: mamma ----> mtammta")
disp ("")

% Inserimento Nome
name=input("Inserisci Il Nome : ", "s"); % Inserimento nome
charlen=length (name); % calcolo lunghezza nome
disp ("")

% Analisi Del Nome E Cambiamento Vocali
n=1;
for i=n:charlen
	if name(i)=="a"
		vocal(i)=strrep(name(i), "a", "fa");
	elseif name(i)=="e"
		vocal(i)=strrep(name(i), "e", "fe");
	elseif name(i)=="i"
		vocal(i)=strrep(name(i), "i", "fi");
	elseif name(i)=="o"
		vocal(i)=strrep(name(i), "o", "fo");
	elseif name(i)=="u"
		vocal(i)=strrep(name(i), "u", "fu");
	else
		vocal(i)=name(i);
	end 
end

% Display Nome Invertito
printf ("Nome con Sostituzioni : "),disp(vocal)

endfunction
