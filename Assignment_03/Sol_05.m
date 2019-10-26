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

disp('Solving using Jacobian Method')
[~,~, itr1] = Jacobi(A,b,n);
disp("No of Iteration in Jacobi:   "+itr1)
disp(' ')
disp('Solving using Gauss_Seedal Method')
[~,~, itr2] = Gauss_Seedal(A,b,n);
disp("No of Iteration in Gauss Seedal:   "+itr2)

disp(' ')
disp('Solving using SOR Method')
[~,~, itr3] = SOR(A,b,n,1.4);
disp("No of Iteration taken in SOR:   "+itr3)
