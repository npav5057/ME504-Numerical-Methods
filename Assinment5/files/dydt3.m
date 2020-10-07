function dr = dydt3(t,y,u)
dr =zeros(2,1);
dr = [y(2); u*(1-y(1)^2)*y(2)-y(1)];
end