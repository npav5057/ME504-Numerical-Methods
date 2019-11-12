% created by Pradeep Nag B17133
function p = fun(x)
a=x(1)^3-2*x(1)*x(2)+x(2)^7-4*x(1)^3*x(2)-5;
b=x(2)*sin(x(1))+3*x(1)^2*x(2)+tan(x(1))-4;
p=[a,b]';
end