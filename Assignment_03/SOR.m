function [time,error,itr] = SOR(A,B,n,w)
time=clock;
tol = 1e-4;
xi =zeros(n,1);
xf =ones(n,1);
itr=1;
error= zeros(2,1);
while true && n>2
    
    xf(1)=A(1,1)\w*(B(1)-A(1,2:n)*xi(2:n))+(1-w)*xi(1);
    for i=2:n-1
        xf(i)=A(i,i)\w*(B(i)-A(i,1:i-1)*xf(1:i-1)- A(i,i+1:n)*xi(i+1:n))+ (1-w)*xi(i);
    end
    xf(n)=A(n,n)\w*(B(n)-A(n,1:n-1)*xf(1:n-1))+(1-w)*xi(n);
    if max(abs(xf-xi))>tol
        error(itr)= norm(xf-xi,Inf);
        xi=xf;
        itr=itr+1;
    else
        itr=itr-1;
        break 
    end
end
% disp("SOR Root")
% xf
time=etime(clock,time); 
end