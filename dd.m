% Guia TRyC error en estado estable #4
clear all; close all; clc

s=tf('s')

% Definimos las funciones de transferencia
% G=50/((1+0.5*s)*(1+2*s)) % G1
% G=2/(s*(1+0.1*s)*(1+0.5*s)) % G2
% G=1/(s*(s^2+4*s+200)) % G3

% Constantes de error
Kp = dcgain(G)
Kv = dcgain(minreal(G*s))
Ka = dcgain(minreal(G*s^2))

% Errores en estado estable para los tipos de entrada
ess_e = 1/(1+Kp)
ess_r = 1/Kv
ess_p = 1/Ka
% (suponiendo entradas unitarias)

subplot(2,1,1)
step(feedback(G,1))
subplot(2,1,2)
ramp(feedback(G,1))
