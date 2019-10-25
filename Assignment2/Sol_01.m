%initialisng Variables
clc;
clear all;
g = 9.81;
m0 = 2e5;
v = 1500;
vr = 2500;
uf = 3000;

a = v/vr; % storing v/vr in var a
b = g/vr;  % storing g/vr in var b;


% The Homogenious function 
f = @(t) ( uf*t + m0*exp(-(a+b*t)) - m0);
%setting tolorence
tol =1e-9;
% disp('error alowed in final ans:')
% tol
% initialising brakets
xu = 0; xr = 100;
 
f1= f(xu);
f2 = f(xr);

% initial point in false positon method
xt = (f2*xu-f1*xr)/(f2-f1);
root = f(xt);
it=0;
format long
while abs(root)>tol
    if f1*root<0
        xr = xt;
        f2 = f(xr);
    else 
        xu = xt;
        f1= f(xu);
    end
    xt = (f2*xu-f1*xr)/(f2-f1);
    root = f(xt);
    it=it+1;
end
disp('root is:')
time =xt
clear all
