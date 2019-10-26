clc
clear all;

disp(' ')
disp(' ')
disp("Setting Matrix Equation")
n=4;
A = [7 3 -1 2;3 8 1 -4;-1 1 4 -1; 2 -4 -1 -6];
b = [-1,0,-3,-1]';
disp("Parameters of Equation Ax = B are defined ")

disp(' ')
disp(' ')
i=1;
for w=1:0.1:2
    [~,~, itr(i)] = SOR(A,b,n,w);
    i=i+1;
end
cla reset
grid on
w=1:0.1:2;
itr'
plot(w,itr,'--k*','LineWidth',1.6)
xlabel("Relaxation Parameter (w)")
ylabel("No. of Iterations")
title("Iteration vs W")
saveas(gcf,'Iterations','jpg');
