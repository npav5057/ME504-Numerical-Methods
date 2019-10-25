clc;
clear all;
% frequency equation
freq = @(b) (cosh(b).*cos(b)+1);
% x = 0:0.1:5;
% y = freq(x);
% plot(x,y)


% two roots of frequency equation
b1 = fzero(freq,1);
b2 = fzero(freq,5);

%  initialising given values;
L = 0.9;
E = 200e9;
b = 25e-3;
h = 2.5e-3;
d =7850;

format long
% calculating masss = dencity * volume
m = d*L*b*h;

% Moment of inertia of the cross section in cantelever beam
I =b*h^3/12;
fi = @(bi) ( (bi^2/(2*pi))*sqrt(E*I/(m*L^3)) );
fprintf('\n\nFirst natural frequency : %f \n\n',fi(b1))
fprintf('Second natural frequency: %f \n\n\n',fi(b2))
