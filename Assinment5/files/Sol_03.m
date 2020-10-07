
clear all
close all
cla reset
% @author Pradeep B17133
% Part A

u=1;
tspan = [0 20];
init_val= [1; 1];
[t,y] =ode45(@(t,y)dydt3(t,y,u),tspan,init_val);
plot(t,y(:,1),'-*b',t,y(:,2),'-*r')
grid on
title('Solution of van der Pol Equation (\mu = 1) with ODE45');
xlabel('Time t','FontSize',15);
ylabel('Solution of Eq','FontSize',15);
legend(["y = f(t,y)","y'= f(t,y)"],'FontSize',10,'Location','northwest');
saveas(gcf,'plot_03','png')


% Part B using ODE45
cla reset 
clear all

u=1000;
tspan = [0 6000];
init_val= [1; 1];

[t,y] =ode45(@(t,y)dydt3(t,y,u),tspan,init_val);
plot(t,y(:,1),'-*b',t,y(:,2),'-*r')
grid on
title('Solution of van der Pol Equation (\mu = 1000) with ODE45');
xlabel('Time t','FontSize',15);
ylabel('Solution of Eq','FontSize',15);
legend(["y = f(t,y)","y'= f(t,y)"],'FontSize',10,'Location','northwest');
saveas(gcf,'plot_04','png')
cla reset
plot(t,y(:,1),'-*b')
grid on
xlabel('Time t','FontSize',15);
ylabel('Solution of Eq','FontSize',15);
title('first order Solution of van der Pol Equation (\mu = 1000) with ODE45');
saveas(gcf,'plot_05','png')


% Part B using ODE23

[t,y] =ode23(@(t,y)dydt3(t,y,u),tspan,init_val);
plot(t,y(:,1),'-*b',t,y(:,2),'-*r')
grid on
title('Solution of van der Pol Equation (\mu = 1000) using ODE23');
xlabel('Time t','FontSize',15);
ylabel('Solution of Eq','FontSize',15);
legend(["y = f(t,y)","y'= f(t,y)"],'FontSize',10,'Location','northwest');
saveas(gcf,'plot_06','png')
cla reset
plot(t,y(:,1),'-*b')
grid on
xlabel('Time t','FontSize',15);
ylabel('Solution of Eq','FontSize',15);
title('first order Solution of van der Pol Equation (\mu = 1000) using ODE23');
saveas(gcf,'plot_07','png')


