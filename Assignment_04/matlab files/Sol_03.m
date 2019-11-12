% created by Pradeep Nag B17133
clc
clear 
close all
format SHORT
A =[0.9901 0.002;-0.0001 0.9904];
x0=[1 0.9]';
eval=zeros(2,1);
evect=zeros(2,2);
[eig_vectors,eig_values]=eig(A)
[eval(1),evect(:,1)]=power_method(A,x0);
[eval(2),evect(:,2)]=inv_power_method(A,x0);
eval
evect
clear all


A =[8 -1 -5;-4 4 -2;18 -5 -7]
x0=[1 0.8 1]';
eval=zeros(3,1);
evect=zeros(3,3);
[eig_vectors,eig_values]=eig(A)

% [eval(1),evect(:,1)]=power_method(A,x0);
[eval(2),evect(:,2)]=shifted_power_method(A,x0,4.8);
[eval(3),evect(:,3)]=inv_power_method(A,x0);
eval
evect


