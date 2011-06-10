function y = diffeqn(a, x, yn1)
% trying to represent
% y[n] = a y[n-1] + x[n]
% arguments 
% a the coefficient, x the input matrix x, yn1 for y[-1]
s = size(x);
N = s(2);
y(1)=yn1;
y(1)=yn1 + a*x(1)
for n = 2:N
    y(n)=y(n-1) + a*x(n);
end
