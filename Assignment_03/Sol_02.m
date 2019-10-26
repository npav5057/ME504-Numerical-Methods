clc
clear all
itr =1;
for n=3:15
    A = hilb(n);
    x_exact= ones(n,1);
    b = zeros(n,1);
    for i=1:n
        b(i)= sum(A(i,1:n));
    end    
    [~,x_calc] = Gauss_Elimination(A,b,n);
    abs_error(itr) =  norm(x_exact-x_calc);
    residue(itr)   =  norm(b-A*x_calc);
    itr=itr+1; d
end
residue=residue'
abs_error=abs_error'
