% created by Pradeep Nag B17133
clc
clear all
close all
format short
tol=1e-5;
fx = @(x)(-5+ x.^3-2*x.*(4-tan(x))/(3*x.^2+sin(x))+((4-tan(x))/(3*x.^2+sin(x))).^7-4*((4-tan(x))/(3*x.^2+sin(x)))*x.^3);
f_diff = @(x)((cos(x)+6*x)*(4*x^3+2*x)*(4-tan(x))/(sin(x)+3*x^2)^2-((2+12*x^2)*(4-tan(x))+(4*x^3+2*x)*(sec(x))^2)/(sin(x)+3*x^2)  -  7*(cos(x)+6*x)*(4-tan(x))^7/(sin(x)+3*x^2)^8-7*(sec(x))^2*(4-tan(x))^6/(sin(x)+3*x^2)^7+3*x^2);
x_val = 1;
p1=fx(x_val);
n=0; 
tol = 1e-6;
while(abs(p1)>tol)
    x_val = x_val-p1/f_diff(x_val);
    n=n+1;
    p1=fx(x_val);
end
roots_1=[x_val,(4-tan( x_val))/(3* x_val^2+sin( x_val))]'


clear all
tol=1e-5;
% syms x y
% jac =symfun(jacobian([x^3-2*x*y+y^7-4*x^3*y,y*sin(x)+3*x^2*y+tan(x)],[x,y]),[x,y]);
xi= [1,1]';
itr=0;
while true
    itr=itr+1;
    xf=xi-jacobi(xi')\fun(xi);
    if max(abs(xf-xi))<tol
        roots_2=xf
        break
    end
    xi=xf;
end
