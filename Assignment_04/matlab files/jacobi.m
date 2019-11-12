% created by Pradeep Nag B17133
function j= jacobi(x)
j=zeros(2,2);
j(1,1)=3*x(1)^2-2*x(2)-12*x(1)^2*x(2);
j(1,2)= -2*x(1)+7*x(2)^4*x(2)^3;
j(2,1) = x(2)*cos(x(1))+6*x(2)*x(1)+tan(x(1))^2+1;
j(2,2)= sin(x(1))+3*x(1)^2;
end