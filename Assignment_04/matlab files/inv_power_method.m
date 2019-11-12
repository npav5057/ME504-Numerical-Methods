% created by Pradeep Nag B17133
function [eval,evect] = inv_power_method(A,x0)
tol=1e-6;
x1 = A\x0;
x2 = A\x1;
init = norm(x2,Inf)/norm(x1,Inf);
itr=0;
while true
    itr=itr+1;
    x3=A\x2;
    final=norm(x3,Inf)/norm(x2,Inf);
    if abs(final-init)<tol
        eval=1/final;
        evect=x3/norm(x3);
        break;
    end
    init=final;
    x2=x3;
end
end