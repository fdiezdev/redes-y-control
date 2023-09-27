% Unidad 7: funciones de transferencia de sistemas físicos
% Sistema 2
clear all; close all; clc

s=tf('s')

PI = (s+0.1)/s
P=12
G1=zpk([],[-200],27)
G2=zpk([],[-0.1],5)

LazoInterno = feedback(P*G1,1)
LazoExterno = feedback(PI*LazoInterno*G2,1)
