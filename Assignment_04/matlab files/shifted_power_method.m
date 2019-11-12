% created by Pradeep Nag B17133
function [eval,evect] = shifted_power_method(A,x0,u)
[n,n]=size(A);
for i=1:n
    A(i,i)= A(i,i)-u;
end
tol=1e-6;
x1 = A\x0;
x2 = A\x1;
init =  max(abs(x2))/ max(abs(x1));
itr=0;
while true
    itr=itr+1;
    x3=A\x2;
    final= max(abs(x3))/ max(abs(x2));
    if abs(final-init)<tol
        eval=1/final+u;
        evect=x3/norm(x3);
        break;
    end
    init=final;
    x2=x3;
end
end