% TRyC ejercicios error en estado estable #6
clear all; close all; clc

syms Kt K s real
% s= tf('s')
G1 = 100/(0.2*s+1)
G2 = 1/(20*s)

FdTLC_int = factor(G1/(G1*Kt),'s')
G = factor((FdTLC_int*K*G2)/(1+(FdTLC_int*K*G2)), 's')

% Calculo de errores ( H(s)=1 )
% Kp = lim{s->0} G(s)*1
Kp = factor(G,'s')
s=0;
Kp = eval(Kp);

% Kv = lim{s->0} s*G(s)*1
Kv= factor(s*G,'s')
s=0;
Kv = eval(Kv);

% Ka = lim{s->0} (s^2)*G(s)*1
Ka=factor(s*s*G,'s')
s=0;
Ka=eval(Ka);

disp('ess_escalon:')
disp(1/(1+Kp));

disp('ess_rampa:')
disp(1/Kv)

disp('ess_parabola:')
disp(1/Ka)

K = 0;
Kt=5;
% Comprobaación %
G1s = tf(100, [0.2 1])
FdTLC_intS = feedback(G1s,Kt)
G2s = tf(1, [20 0])
Gs = feedback(K*G1s*G2s,1)

t = 0:0.001:100 % Vector del 0 al 99 con un paso de 0.001
u = t;
c=lsim(Gs,u,t) % Salida del sistema
