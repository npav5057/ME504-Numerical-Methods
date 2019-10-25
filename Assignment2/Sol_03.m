clc;
clear all;
syms s
Cs = s^3+9*s^2+26*s +24;
a = factor(Cs);
a1 =a(1)
a2 =a(2)
a3 =a(3)

Ns = s^4+15*s^3+77*s^2 +153*s +90;
b = factor(Ns)
b1 = b(1);
b2 = b(2);
b3 = b(3);
b4 = b(4);

Gs = ( a1*a2*a3 )/( b1*b2*b3*b4)
disp('In both System gain and sysytem input equation there is a comman root s+3 which is canceled out ')
clear all;