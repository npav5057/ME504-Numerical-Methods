clc;
clear all;
% setting variables
% in SI units
b= 0.25;
Mu = 126e3;
Fc = 25e6;
Fy = 415e6;

format long
a = Fc/(2*Fy); % a is ratio of fc/2*fy
b = 4.598*Mu/(b*Fc);
tol= 1e-6;

% function for directly getting percentage of reinforcement area of
% effective area
fun = @(d) (100*a*(1-sqrt(1 - b/(d*d))));

% because of the square root there is a minimum value of d so we can't get
% imaginory root
dmin = sqrt(b); % in meteres
% for this minimum value of depth  we will get max percentage of
% reinforcement area 

% max percentage we csn get
mp = fun(dmin);

% assigning percentsge range 
minp =0.8;
maxp = 4;
mindeth=dmin;
if mp<maxp
    maxp=mp;
end
%  for maximum depth
f1 = @(d) (fun(d)-minp);
% secent function is defined in anoter file which is attached with the zip
% file
maxdepth = secant(f1,dmin,dmin+0.1,tol); % in meters

%  for minimum depth
f2 = @(d) (fun(d)-maxp);
mindepth = secant(f2,dmin,dmin+0.1,tol); % in meters

% converting from meter to milimeter
% 1 meter = 1000 mm
format short
% disp('Range of depth (in mm):')
mindepth = mindepth*1000;
maxdepth = maxdepth*1000;

fprintf('\n\nRange of depth(in mm): (%f %f)\n\n\n',mindepth , maxdepth)

