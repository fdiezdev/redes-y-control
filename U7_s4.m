% Unidad 7: funciones de transferencia de sistemas físicos
% 2.a
clear all; close all; clc

s=tf('s')

L = 1*10^-6 % [H]
R = 2 % [Ω]
Ka = 0.042 % [Nm/A]
Kb = 0.042 % [V/rad seg]
J = 10*10^-6 % [Kg*m^2]
B = 0.03*10^-5 % [N/rad seg]

G1 = 1/(L*s+R)
G2 = 1/(J*s+B)

% Se pide determinar las 4 funciones de transferencia que describen al sistema

% Aplicando principio de superposicion

% Anulamos una de las fuentes => TL(s)=0
% W(s)/E(s):
W_E = minreal(feedback(G1*Ka*G2,Kb))
% I(s)/E(s):
I_E = minreal(feedback(G1, Ka*Kb*G2))

% Anulando la otra fuente => E(s)=0
% W(s)/TL(s):
W_TL = minreal(feedback(G2, Ka*Kb*G1))
% I(s)/TL(s):
I_TL = minreal(feedback(G1*G2*Kb, Ka))
