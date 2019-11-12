% created by Pradeep Nag B17133
clc 
clear all
close all
n=5;

A= zeros(n,n);
eig_calc =zeros(n,1);
for i=1:n
    A(i,i)=2;
    if i<n
        A(i+1,i)=-1;
        A(i,i+1)=-1;
    end
    eig_calc(i)=2-2*cos(i*pi/(n+1));
end
A
disp("Eigen Values Calcualated Via eig Function")
eig_value=eig(A)
disp("Eigen Values by 2-2cos(j*pi/(n+1))")
eig_calc

% norm(eig_calc-eig_value,inf)    