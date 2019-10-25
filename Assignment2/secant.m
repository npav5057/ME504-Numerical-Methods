% secent method in matlab
function root = secant(fun,x1,x2,tol)
%  initialisng change dx
dx = 1;
f1 = fun(x1);
f2 = fun(x2);
while abs(dx)>tol % && abs(f2)>tol
    % change in dx
    dx= f2*(x2-x1)/(f2-f1);
    %second point is now first point
    x1=x2;
    f1=f2;
    % initialising second point
    x2=x2-dx;
    f2 = fun(x2);
end
 root = x2;
end