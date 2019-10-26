clc;
clear all;
format long
warning("All data File should be in same folder otherwise thise programme give error")



%%%%%%%%%%%  Tri_digonal 10 X 10 Matrix  %%%%%%%%%%%%%
disp("Testing Methods for 10x10 Trigonal Matrix")
filename = 'tri_diag10.txt';
A=readmatrix(filename); %  10x10 matrix is loaded
disp("Loaded text file "+filename);
disp(" ")
n=10;
b = ones(n,1);
disp("Parameters of Equation Ax = B are defined ")
time = zeros(6,1);

disp("Ploting Spy_matrix")
cla reset;
spy(A);
saveas(gcf,'Tridigonal_10X10_Matrix','jpg');             %%comment out
disp("Spy Matrix 10X10 saved")

% Gauss elemenation solver 
disp(" ")
disp("Solving By Gauss Elemination ")
[time(1),root]=Gauss_Elimination(A,b,n);
disp("Solved time: "+time(1))

% Matlab '\' solver
disp(" ")
disp("Solving By Matlab Solver ")
time(2) = matlab_solver(A,b) ;
disp("Solved time: "+time(2))


disp(" ")
disp("Solving by TDMA Method ")
% Tridigonal Matrix Solver
time(3) = TDMA(A,n);
disp("Solved time: "+time(3))


%%%% Iterative Solvers %%%%%
disp(" ")
disp("Iterative Solvers")

disp("Solving by Jacobi")
% Jacobian Method
[time(4), error, it]=Jacobi(A,b,n);
disp("Solved time: "+time(4))
iteration =1:it;
cla reset
hold on
grid on
plot(iteration,error,'-r*')
clear it error iteration 

%  Gauss Seedal Method
disp(" ")
disp("Solving by Gauss_seedal")
[time(5),error,it]=Gauss_Seedal(A,b,n);
disp("Solved time: "+time(5))
iteration =1:it;
hold on
plot(iteration,error,'--k*','LineWidth',2)
clear it error iteration 

% SOR Method
disp(" ")
disp("Solving by SOR")
[time(6),error,it]=SOR(A,b,n,1.2);
disp("Solved time: "+time(6))
iteration =1:it;
hold on
plot(iteration,error,'-.b+','LineWidth',2)
clear it error iteration 

xlabel("Iteration")
ylabel("Relative Error")
title("Relative error for Different Iterative Methods")
legend("Jacobian","Gauss Seedal","SOR Method")
saveas(gcf,'Error_10x10_ItrMethods','jpg');
disp("Reltive error Graph plotted")

cla reset
c = categorical({'gauss elem','matlab Solve','TDMA','Jacobi', 'Gauss Seedal','SOR Method'});
bar(c,time)
ylabel("Time (second)")
saveas(gcf,'time_10x10','jpg');
disp("Bar Chart plotted")

clear all




%%%%%%%%%%%  Tri_digonal 1000 X 1000 Matrix  %%%%%%%%%%%%%
disp(" ")
disp(" ")
disp("%%%%%%%%%%%  Tri_digonal 1000 X 1000 Matrix  %%%%%%%%%%%%%")
disp("Testing Methods for 1000x1000 Trigonal Matrix")
filename = 'tri_diag1000.txt';
A=readmatrix(filename); %  1000x1000 matrix is loaded
disp("Loaded file "+filename);
disp(" ")
n=1000;
b = ones(n,1);
disp("Parameters of Equation Ax = B are defined ")
disp("Ploting Spy_matrix")
cla reset;
spy(A);
saveas(gcf,'Tridigonal_1000X1000_Matrix','jpg');
disp("SpyMatrix 1000X1000 saved")
time = zeros(6,1);

% Gauss elemenation solver 
disp(" ")
disp("Solving By Gauss Elemination ")
[time(1),root]=Gauss_Elimination(A,b,n);
disp("Solving time: "+time(1))

% Matlab '\' solver
disp(" ")
disp("Solving By Matlab Solver")
time(2) = matlab_solver(A,b);
disp("Solved time: "+time(2))

% Tridigonal Matrix Solver
disp(" ")
disp("Solving By TDMA Method")
time(3) = TDMA(A,n);
disp("Solved time: "+time(3))


%%%% Iterative Solvers %%%%%
disp(" ")
disp("Iterative Solvers")
% Jacobian Method
disp(" ")
disp("Solving By Jacobian Method ")
[time(4),error,it]=Jacobi(A,b,n);
disp("Solved time: "+time(4))
iteration =1:it;
cla reset
hold on
grid on
plot(iteration,error,'-r*')
clear it error iteration

%  Gauss Seedal Method
disp(" ")
disp("Solving By Gauss Seedal Method")
[time(5),error,it]=Gauss_Seedal(A,b,n);
disp("Solved time: "+time(5))
iteration =1:it;
hold on
plot(iteration,error,'--k*','LineWidth',2)
clear it error iteration

% SOR Method
disp(" ")
disp("Solving by SOR")
[time(6),error,it]=SOR(A,b,n,1.2);
disp("Solved time: "+time(6))
iteration =1:it;
hold on
plot(iteration,error,'-.b+','LineWidth',2)
clear it error iteration
xlabel("Iteration")
ylabel("Relative Error")
title("Relative error for Different Iterative Methods")
legend("Jacobian","Gauss Seedal","SOR")
saveas(gcf,'Error_1000x1000_ItrMethods','jpg');
disp("Reltive error Graph plotted")

cla reset
c = categorical({'Gauss-Elim','Matlab Solver','TDMA','Jacobian', 'Gauss-Seedal','SOR'});
bar(c,time)
ylabel("Time (second)")
saveas(gcf,'time_1000x1000','jpg');
disp("Bar Chart plotted")
clear all;


%%%%%%%%%%%  Tri_digonal 10000 X 10000 Matrix  %%%%%%%%%%%%%
disp(" ")
disp("%%%%%%%%%%%  Tri_digonal 10000 X 10000 Matrix  %%%%%%%%%%%%%")
disp("Testing Methods for 10000x10000 Trigonal Matrix")

filename = 'tri_diag10000.txt';
A=readmatrix(filename); 
disp("Loaded "+filename);
disp(" ")
n=10000;
b = ones(n,1);
time = zeros(5,1);
disp("Parameters of Equation Ax = B are defined ")

disp("Ploting Spy_matrix")
cla reset;
spy(A);
saveas(gcf,'Tridig_10000X10000_Mat','jpg');
disp("SpyMatrix 10000X10000 saved")

% Gauss elemenation solver 
% disp(" ")
% disp("Solving by Gauss Elimimation Method")
% [time(1),root]=Gauss_Elimination(A,b,n);
% disp("Solving time: "+time(1))


% Matlab '\' solver
disp(" ")
disp("usnig Matlab Solver:")
time(1) = matlab_solver(A,b) ;
disp("Solving time: "+time(1))

% Tridigonal Matrix Solver
disp(" ")
disp("Solving by TDMA")
time(2) = TDMA(A,n);
disp("Solving time: "+time(2))

%%%% Iterative Solvers %%%%%
disp(" ")
disp("Iterative Solvers")
% Jacobian Method
disp(" ")
disp("Solving by Jacobian Method")
[time(3),error,it]=Jacobi(A,b,n);
disp("Solving time: "+time(3))
iteration =1:it;
cla reset
hold on
grid on
plot(iteration,error,'-r*')
clear it error iteration

%  Gauss Seedal Method
disp(" ")
disp("Solving by Gauss_seedal Method")
[time(4),error,it]=Gauss_Seedal(A,b,n);
disp("Solving time: "+time(4))
iteration =1:it;
hold on
plot(iteration,error,'--k*','LineWidth',2)
clear it error iteration

% SOR Method
disp(" ")
disp("Solving by SOR")
[time(5),error,it]=SOR(A,b,n,1.2);
disp("Solving time: "+time(5))
iteration =1:it;
hold on
plot(iteration,error,'-.b+','LineWidth',2)

xlabel("Iteration")
ylabel("Relative Error")
title("Relative error for 10000x10000")
legend("Jacobian","Gauss Seedal","SOR")
saveas(gcf,'Error_10000x10000_ItrMethods','jpg');
disp("Error Graph is plotted")
cla reset
c = categorical({'matlab Solver','TDMA','Jacobian', 'Gauss-Seedal','SOR'});
bar(c,time)
ylabel("Time (second)")
saveas(gcf,'time_10000x10000','jpg');
disp("Respective Times are plotted as Bar Chart ")
clear all
%}




%%%%%%%%%%%  General Matrices  %%%%%%%%%%%%%


disp("%%%%%%%%%%%  General Matrices  %%%%%%%%%%%%%")
disp("For General 1941 x 1941 Matrix")
filename = 'k_1941.txt';
A=readmatrix(filename);
disp("Loaded File "+filename);
filename = 'f_1941.txt';
b=readmatrix(filename);
disp("Loaded File "+filename);
n=1941;

disp(" ")
disp(" ")
disp("Parameters of Equation Ax = B are defined ")
disp("Ploting Spy_matrix")
cla reset;
spy(A);
saveas(gcf,'General _1941x1941_Matrix','jpg');
disp("Genral 1941x1941 SpyMatrix saved")
time = zeros(6,1);

Gauss elemenation solver
disp(" ")
disp("Solving by Gauss Elimimation Method")
[time(1),~]=Gauss_Elimination(A,b,n);
disp("Solving time: "+time(1))

Matlab '\' solver
disp(" ")
disp("Solving by Matlab solver")
time(2) = matlab_solver(A,b) ;
disp("Solving time: "+time(2))

%%%% Iterative Solvers %%%%%

% Jacobian Method
disp(" ")
disp("Solving by Jacobi Method")
[time(3),~,~]=Jacobi(A,b,n);
disp("Solving time: "+time(3))

%  Gauss Seedal Method
disp(" ")
disp("Solving by Gauss seedal Method")
[time(4),~,~]=Gauss_Seedal(A,b,n);
disp("Solving time: "+time(4))

disp(" ")
disp("Solving by SOR Method")
[time(5),~,~]=SOR(A,b,n,1.2);
disp("Solving time: "+time(5))


disp(" ")
disp("Solving by conjugate Gradient Method")
time(6)= Conjugate_gradient(A,b,n);
disp("Solving time: "+time(6))
disp(" ")
disp("Plotting Bar chart")
cla reset
c = categorical({'Gauss Elimimation','Matlab Solver','Jacobian', 'Gauss-Seedal','SOR','Conjugate Gradient'});
bar(c,time)
title("Time taken to solve 1941 x 1941 matrix by different Methods")
ylabel("Time(in second)")
saveas(gcf,'time_General_1941x1941_Mat','jpg');
clear all;

 


disp(" ")
disp(" ")
disp("%%%%%%%%%%%% For General 11943 x 11943 Matrix %%%%%%%%%%%%%%%%%%%")
filename = 'k_11943.txt';
disp("Reading Matrix")
A=readmatrix(filename);
disp("Loaded File "+filename);
filename = 'f_11943.txt';
b=readmatrix(filename);
disp("Loaded File "+filename);
n=11943;
disp(" ")
disp("Parameters of Equation Ax = B are defined ")
disp("Ploting Spy_matrix")
cla reset;
spy(A);
saveas(gcf,'General _11943x11943_Matrix','jpg');
disp("Genral 11943x11943 SpyMatrix saved")
time = zeros(5,1);

% Gauss elemenation solver
% disp(" ")
% disp("Solving by Gauss Elimimation Method")
% [temp_time,~]=Gauss_Elimination(A,b,n);
% disp("Solving time: "+temp_time)

% Matlab '\' solver
disp(" ")
disp("Solving by Matlab solver")
time(1) = matlab_solver(A,b) ;
disp("Solving time: "+time(1))

%%%% Iterative Solvers %%%%%

% Jacobian Method
disp(" ")
disp("Solving by Jacobi Method")
[time(2),~,~]=Jacobi(A,b,n);
disp("Solving time: "+time(2))

%  Gauss Seedal Method
disp(" ")
disp("Solving by Gauss seedal Method")
[time(3),~,~]=Gauss_Seedal(A,b,n);
disp("Solving time: "+time(3))

disp(" ")
disp("Solving by SOR Method")
[time(4),~,~]=SOR(A,b,n,1.2);
disp("Solving time: "+time(4))

disp(" ")
disp("Solving by conjugate Gradient Method")
time(5)= Conjugate_gradient(A,b,n);
disp("Solving time: "+time(5))
disp(" ")
disp("Plotting Bar chart")
cla reset
c = categorical({'Matlab Solver','Jacobian', 'Gauss-Seedal','SOR','Conjugate Gradient'});
bar(c,time)
title("Time taken to solve 11943 x 11943 matrix by different Methods")
ylabel("Time(in second)")
saveas(gcf,'time_General_11943x11943_Mat','jpg');
