% created by Pradeep Nag B17133
function [eval,evect] = power_method(A,x0)
tol=1e-6;
x1 = A*x0;
x2 = A*x1;
init = max(abs(x2))/max(abs(x1));
itr=0;
while true
    itr=itr+1;
    x3=A*x2;
    final= norm(x3,Inf)/norm(x2,Inf);
    if abs(final-init)<tol
        eval=final;
        evect=x3/norm(x3);
        break;
    end
%     if itr>480
%         break
%     end
    init=final;
    x2=x3;
end
end