clc
clear all
close all
 % @Author Pradeep B17133
 t=0:0.2:10;
 init_val=1;
 y= rk_pradeep(@dydt,t,init_val); 
 
 cla reset
% points got using runge Kutta Method
plot(t,y,'+-k','LineWidth',2)
% Analytical solution
y_anal=exp(-t);
hold on
plot(t,y_anal,':r','LineWidth',3)

% dydt solved uding ode45 method
[t,y_ode] =ode45(@dydt,t,init_val);
plot(t,y_ode,'*--b','LineWidth',1)
% plotting Graph
grid on
xlabel('t','FontSize',15,'Color','k');
ylabel("e^{-t}",'FontSize',15,'Color','k');
title("y = e^{-t}",'FontSize',15,'Color','k');
lg=legend("Runge Kutta","Analytical Sol.","ode45 Sol");
lg.FontSize=15;
% saveas(gcf,'plot_01','png')