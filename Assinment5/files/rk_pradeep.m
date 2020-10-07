% Created by B17133
function ans =rk_pradeep(dydt,t,init)

h=t(2)-t(1);  % space 
n=length(t);
y=zeros(1,n);
y(1)=init;   %initial Vaues
% Runge Kutta Method
for i=1:n-1
    k1 = dydt(t(i),y(i));            % Calculating slope 1
    k2 = dydt(t(i)+h/2,y(i)+k1*h/2); % Calculating slope 2
    k3 = dydt(t(i)+h/2,y(i)+k2*h/2); % Calculating slope 3
    k4 = dydt(t(i)+h,y(i)+k3*h);     % Calculating slope 4
    y(i+1) = y(i)+(k1+2*k2+2*k3+k4)*h/6;
end
ans=y;
end
