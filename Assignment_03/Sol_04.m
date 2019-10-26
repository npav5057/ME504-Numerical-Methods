clc
clear all

A = [3 2; 2 6];
b = [2 -8]';
disp("Parameters of Equation Ax = B are defined")


l1 = @(x)((2-3*x)/2);
l2 = @(x)(-(8+2*x)/6);
disp("Equation of lines are defined")
cla reset
hold on
grid on
pt= 0:0.1:4;
disp("Plotting Line 1")
plot(pt,l1(pt),'-.k','linewidth',1.5);
disp("Plotting Line 1")
plot(pt,l2(pt),'--b','linewidth',1.5);
x= A\b;
plot(x(1),x(2),'ro','linewidth',3);
xlabel("x1")
ylabel("x2")
legend("3x_{1}+2x_{2} = 2","2x_{1}+8x_{2} = -8","Intersection Point")
title("Intersection of lines")
saveas(gcf,'lines','jpg');
disp("Graph of intersection of line saved")
clear l1 l2 pt x;


[x1,x2] = meshgrid(-3:0.25:7,-7:.25:3);
z= 3*x1.^2 +6*x2.^2-2*x1+8*x2+6*x1.*x2;
[dx,dy] = gradient(z);
cla reset
hold on
grid on
disp("Plotting Quadratic Equation")
surf(x1,x2,z)
plot3(2,-2,-8,'r.','MarkerSize',20)
view(120,-5)
axis([-3 7 -7 3 -50 350])
xlabel("x1-axis")
ylabel("x2-axis")
zlabel("F(X)");
title("F(x)=x^TAx^T-b^T*x+c")
legend("Quadratic Equation","Minima")
scale=20;
saveas(gcf,'Quadratic_Eq','jpg');
contour3(x1, x2, z,scale,'k','linewidth',2)
view(45,75)
legend("Quadratic Equation","Minima","Contour Lines")
saveas(gcf,'contour','jpg');
clear x1 x2 z
clear all

