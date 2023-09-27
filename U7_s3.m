% Unidad 7: funciones de transferencia de sistemas físicos
% Sistema 3
clear all; close all; clc

%s=tf('s')

syms Ti Td wn psita Kp s real

G1=(Ti*Td*s^2+Ti*s+1)/(Ti*s)
G2=(wn^2)/(s^2+2+psita*wn*s+wn^2)

% Calculo la trayectoria directa
TD = Kp*G1*G2
% Obtengo la funcion de transferencia del lazo cerrado
Sys = TD/(1+TD)
Sys=factor(Sys,'s')
