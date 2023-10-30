% TRyC ejercicios error en estado estable #5
clear all; close all; clc

syms s Kt real
G = (Kt*(2*s+1))/(s*(0.4*s+1)*((s+1)^2))
R = (s+5)/(s^2)
E = factor(s*R/(1+G),'s')

% tomo el limite de s*E cuando s->0
s=0;
eval(E)

