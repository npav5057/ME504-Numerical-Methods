function ans=TDMA(d,a,c,b)
n=length(b);
for i=2:n
    d(i)=d(i)-(c(i-1)*a(i-1))/d(i-1);
    b(i)= b(i) - (b(i-1)*a(i-1))/d(i-1);
end
x = zeros(n,1);
x(n) = b(n)/d(n);
for i=n-1:-1:1
    x(i)=(b(i)-c(i)*x(i+1))/d(i);
end
ans=x;
end