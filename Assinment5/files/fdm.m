function [x,y] =fdm(n,E,I,w,l)
h=l/(n+1);
x=h:h:l-h;
xi=0;
xf=0;
a=-2*ones(1,n);
c=ones(1,n-1);
d= ones(1,n-1);
b = zeros(1,n);
b(1)= -xi+(2*E*I)\w*h^2*(l*x(1)-x(1)^2);
for i=2:n-1
    b(i)=(2*E*I)\w*h^2*(l*x(i)-x(i)^2);
end
b(n)= -xf+(2*E*I)\w*h^2*(l*x(n)-x(n)^2);

rs= TDMA(a,c,d,b);

x=0:h:l;
y=0:h:l;
for i=1:n
    y(1+i)=rs(i);
end
y(n+2)=0;
end