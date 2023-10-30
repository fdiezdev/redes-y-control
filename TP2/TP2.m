clear all; close all; clc

s=tf('s');

FdTLA = 1000/((1000+s)*(100+s));

step(FdTLA,0.1);grid;

k=1;
FdTLC=feedback(k*FdTLA,1);
pole(FdTLC);
pzmap(FdTLC);

rlocus(FdTLC);
