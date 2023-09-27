clear all; close all; clc

pkg load symbolic
pkg load control

syms R1 R2 R3 R4 I1 I2 vi a V1 V2

V1=I1*R1+vi
I1 = (V2+(vi*((1/R4)-a)))/(R4)
(I1*(R3+R4))+(vi*(a-(R3/R2)-(R4/R2)))==0

[sol1, sol2, sol3] = solve(V1==I1*R1+vi,I1 == (V2+(vi*((1/R4)-a)))/(R4),(I1*(R3+R4))+(vi*(a-(R3/R2)-(R4/R2)))==0)
