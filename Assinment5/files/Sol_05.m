
clear all
close all

% @author Pradeep B17133

E = 200e9;
I = 3e-4;
w = 15e3;
l=3;


n =3;
% h=l/(n+1);
% x=h:h:l-h;
[x,y]=fdm(n,E,I,w,l);
cla reset
plot(x,y,'-*g')

% for points n 100
n=100;
[x,y]=fdm(n,E,I,w,l);
hold on
plot(x,y,'-+k')


n=1000;
[x,y]=fdm(n,E,I,w,l);
plot(x,y,':b','LineWidth',1.4)


Sol_anal = @(x)(12*E*I\w*(l*x.^3-2\l^3*x-2\x.^4));
y=Sol_anal(x);
plot(x,y,'-r','linewidth',1.2);

grid on
xlabel('x_{length}','FontSize',15,'Color','k');
ylabel("y_{deflection}",'FontSize',15,'Color','k');
title("deflection of Beam ",'FontSize',15,'Color','k');
legend(["n = 3","n = 100","n = 1000","Analytical Solution"],'FontSize',10);
saveas(gcf,'plot_10','png')





