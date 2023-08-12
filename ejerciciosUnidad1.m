% Defino las variables
syms R1 R2 L1 L2 s Vin real;

X1 = s*L2 + R2
X2 = s*L1

Rn = R1+(X1*X2)/(X1+X2)

simplify(Rn);

factor(Rn);
