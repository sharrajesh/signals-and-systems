%symsum create algebraic expression
clear
clc

a=[6 -5 1];
b=[1 -1];

%note that num and denom are opposite of a and b
num=[-1 1];
den=[1 -5 6];

[r p k]=residue(num,den);
r
p
k

N=length(r);

syms n w

Hn=sym('r(n)')/(exp(-j*w)-sym('p(n)'))

Hs=symsum(Hn,n,1,N);

H=eval(Hs);

H

return;
