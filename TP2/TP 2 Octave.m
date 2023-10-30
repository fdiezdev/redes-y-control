clear all; close all; clc

s=tf('s')

% Analisis Lazo Abierto %
FdTLA=100000/((1000+s)*(100+s))

step(FdTLA, 0.1);grid

% Analisis Lazo Cerrado %
k=1;
FdTLC = feedback(FdTLA*k,1)
pole(FdTLA)
%pzmap(FdTLC)

rlocus(FdTLA,0.1,0,10)
