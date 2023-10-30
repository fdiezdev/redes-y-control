clear all; close all; clc
% Se define la función de transferencia
G=tf([50 1000], [1 18 -25 -1050])
%? Gx=feedback(G,1)
% Determinamos si el sistema es estable:
pole(G) % vemos que tiene un polo en 7 con parte Re(+) =>
        % el sistema no es estable
pzmap(G)
step(G)

% Se pide encontrar el valor de K para hacer el sistema estable
% Valuamos 1/|G(s)| con s = 0:
Kest=1/abs((50*0+1000)/(0^3+18*0^3-25*0-1050))
% Para este valor de K el sistema se vuelve estable. Verificamos:
Gest=feedback(Kest*G,1)
pole(Gest)
pzmap(Gest)
% El polo en 7 se desplaza a 0 => el sistema se vuelve estable
% step(Gest)% para que de estable la K > 1.05

%% Ahora se nos pide determinar para que valor de K el sistema va a tener una respuesta críticamente amortiguada
% Sabemos que rta. criticamente amortiguada => psita = 1
%                                           => wn = ?
rlocus(Gest);sgrid
% vemos que para un psita=0.999 necesitamos que K = 0.01
Gcrit = feedback(0.01*Gest,1)
damp(Gcrit) % verificamos que devuelve damping=1 para todos los polos
step(Gcrit) % Vemos que tiene la forma de un sistema con amortiguamiento crítico

%% Ahora se nos pide determinar el valor de K para obtener un Mp = 4%
% Luego obtenemos psita con la formula del logaritmo natural
Mp = 0.04
psita = sqrt((log(Mp)^2)/(pi^2+log(0.04)^2))
rlocus(Gest);sgrid
Kmp = 0.0211
Gmp=feedback(Kmp*Gest,1)
step(Gmp)