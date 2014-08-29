function gravit

clc

disp ("Questo Script Calcola Lo Spazio Percorso")
disp ("Da Un Corpo In Caduta Libera")

disp ("")

% Inserimento Parametri
g=9.81; % Accellerazione Di Gravità
t_start=input("Inserisci Il Tempo Iniziale (secondi) : ");
do
	t_end=input("Inserisci Il Tempo Finale (secondi) : ");
	if (t_end<t_start)
		disp("error: tempo iniziale minore di quello finale !!!!!")
	end 
until (t_end>t_start)
y=input("Inserisci La Posizione Iniziale (metri) : ");
v=input("Inserisci La Velocità Iniziale (m/s) : ");

disp("")

% Calcolo
delta_t=t_end-t_start;
Y_m=( ((g*(delta_t)^2)/2) + v*(delta_t) + y );
Y_km=Y_m/1000;
V_m_s=( g*(delta_t) + v );
V_km_h=V_m_s*3.6;

% Output Dati
clc
printf ("Time (s) : "), disp(delta_t)
printf ("Position (m) : "), disp(Y_m)
printf ("Position (km) : "), disp(Y_km)
printf ("Speed (m/s) : "), disp(V_m_s)
printf ("Speed (km/h) : "), disp(V_km_h)

endfunction
