clear all
close all
% created by B17133 Pradeep
l=0.6;
g=9.81;
k=g/l;    % ratio g/l
tspan = [0 10];

% dydt4 is nonliner form of pendulm differential equation
% dydt5 is liner form of pendulm differential equation

% Case 1 Initial value
init_val1 = [pi/16;0];
[t,y1] = ode45(@(t,y)dydt4(t,y,k),tspan,init_val1);
[t,y2] = ode45(@(t,y)dydt5(t,y,k),tspan,init_val1);
plot(t,y1(:,1),'-*r',t,y2(:,1),'-ok')
grid on
xlabel("t_{seconds}")
ylabel("ø_{displacement}")
title("Graph of ø vs t for Small Displacements")
legend(["Nonlinier Model","Linier Model"],'FontSize',10);
saveas(gcf,'plot_08','png')

% Case 2 Initial value
init_val2 = [pi/2;0];
[t,y1] = ode45(@(t,y)dydt4(t,y,k),tspan,init_val1);
[t,y2] = ode45(@(t,y)dydt5(t,y,k),tspan,init_val1);
cla reset
plot(t,y1(:,1),'-*r',t,y2(:,1),'-ok')
grid on
xlabel("t_{seconds}")
ylabel("ø_{displacement}")
title("Graph of ø vs t for Higher Displacements")
legend(["Nonlinier Model","Linier Model"],'FontSize',10);
saveas(gcf,'plot_09','png')
cla reset
plot(t,y2(:,1),'-*r',t,y2(:,2),'-ok')

