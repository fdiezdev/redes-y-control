% Teoría de Redes y Control – Ingeniería Biomédica
% Guía del Ing. Pedroni
% Ejercicio 11 - a
close all; clear all; clc
%% pkg load symbolic
%% pkg load control

syms Vin Vout R1 R2 C1 C2 s real

% se definen las impedancias capacitivas en una sola variable
X1=1/(s*C1);
X2=1/(s*C2);

Rpar = (R1*(R2+X1))/(R1+R2+X1);
% buscamos potencias positivas en los polinomios
factor(Rpar)

% ahora sumamos el capacitor en serie C2
Rth = Rpar + X2;
factor(Rpar)

% expresamos el valor de la corriente
I1=Vin/(R1+R2+X1);
factor(I1)

% ahora expresamos el voltaje de Thevenin
Vth=I1*(R2+X2);
simplify(Vth)
disp('Terminado')
