% @author B17133_Pradeep
% differential Equation 
% d^2ø/dy^2 +(g/l)ø=0
function dr = dydt5(t,y,k)
dr =zeros(2,1);
dr = [y(2); -k*y(1)];
end