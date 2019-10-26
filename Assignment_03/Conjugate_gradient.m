function time = Conjugate_gradient(A,b,n)
time=clock;
tol=1e-6;
x= zeros(n,1);
r= b;
s=r;
k=0;
while true
    alpha = (s'*r)/(s'*A*s);
    x=x+alpha*s;
    r= b-A*x;
    if max(r)<tol
        break
    end
    bk = -(r'*A*s)/(s'*A*s);
    s=r+bk*s;
    k=k+1;
end
time=etime(clock,time); 
end