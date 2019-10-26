function [time,error,itr] = Jacobi(A,B,N)
time=clock;
xi = zeros(N,1);
xf = ones(N,1);
tol =1e-4;
itr=1;
error= zeros(2,1);
while(true)
    for i=1:N
        xf(i)=A(i,i)\(B(i)+A(i,i)*xi(i)-A(i,:)*xi(:));
    end
    
    if max(abs(xf-xi))>tol
        error(itr)= norm(xf-xi,Inf);
        xi=xf;
        itr=itr+1;
    else
        itr=itr-1;
%         disp("roots using Jacobian Method")
%        xi
        break 
    end
end
 time=etime(clock,time); 
 end