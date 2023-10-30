clear all; close all; clc
s=tf('s');

% Sistema G1
G1=tf(1,[1 3 3 1]);
disp('Sistema G1')
pole(G1)

% Sistema G2
G2=tf(10,[1 2.996 3 11]);
disp('Sistema G2')
pole(G2)

% Sistema G3
G3=tf([50 1000],[1 24 125 -250]);
disp('Sistema G3')
pole(G3)

% Sistema G4
G4=tf(100,[1 0 10 100]);
disp('Sistema G4')
pole(G4)

% Sistema G5
G5=tf([1 -10],[1 2 3 4]);
disp('Sistema G5')
pole(G5)