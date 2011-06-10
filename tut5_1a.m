%symbolic computation of continuous time fourier transform
clear
clc

syms n 

u1=heaviside(n);
u2=heaviside(n-11);
u=u1-u2;

% in a symbolic expression replace n by a vector and result is a vector as
% well
x=subs(u,n,[0:10]);
stairs(x);
axis([-15 15 0 2])
grid

