% created by Pradeep Nag B17133
clc
clear all
close all

A = rand(5,5)

time=clock;
d_eig = eig(A)
time=etime(clock,time);
disp("Time Taken by Eig Function")
time

time=clock;
coeff = poly(A);
d_poly = roots(coeff)
time=etime(clock,time);
disp("Time Taken by roots Function")
time

error=norm(d_eig-d_poly,Inf)