function time= matlab_solver(A,b)
time=clock;
% disp("roots from matlab solver")
x=A\b;
time=etime(clock,time);
end