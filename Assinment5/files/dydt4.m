% @author B17133_Pradeep
% differential Equation 
% d^2ø/dy^2 +(g/l)sin(ø)=0

function dr = dydt4(t,y,k)
dr =zeros(2,1);
dr = [y(2); -k*sin(y(1))];
end