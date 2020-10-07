
clear all
close all

h=0.25;
x=0:h:1;
n=length(x);
y_rk=zeros(1,n);
y_rk(1)=1;
y_eu=zeros(1,n);
y_eu(1)=1;

for i=1:n-1
    % Solving using euler method
    y_eu(i+1)=y_eu(i)+h*dydt1(x(i),y_eu(i));
    
    % Runge Kutta Method
    k1 = dydt1(x(i),y_rk(i));              % Calculating slope 1
    k2 = dydt1(x(i)+h/2,y_rk(i)+k1*h/2);   % Calculating slope 2
    k3 = dydt1(x(i)+h/2,y_rk(i)+k2*h/2);   % Calculating slope 3
    k4 = dydt(x(i)+h,y_rk(i)+k3*h);       % Calculating slope 4
    y_rk(i+1) = y_rk(i)+(k1+2*k2+2*k3+k4)*h/6; 
end


cla reset
plot(x,y_eu,'+--b','LineWidth',1.5)
hold on
% points got using runge Kutta Method
plot(x,y_rk,'*-k','LineWidth',1.5)

% dydt solved uding ode45 method
[x,y]=ode45(@(t,y)dydt1(t,y),[0 1],1);
plot(x,y,':r','LineWidth',3)
grid on
xlabel('x','FontSize',15,'Color','k');
ylabel("y={(x+2x^2)^2}/4",'FontSize',15,'Color','k');
title("y={(x+2x^2)^2}/4",'FontSize',15,'Color','k');
lg=legend("Eular's Method","Runge Kutta","ode45 Method");
lg.FontSize=10;
saveas(gcf,'plot_02','png')