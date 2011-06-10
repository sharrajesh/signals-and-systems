clear
clc

N=64;
%range
r=[0:N-1];

syms n

xn=(-3/4)^n;
%replace n with vector r
x=subs(xn,n,r);

yn=(2/5)*(1/2)^n+(3/5)*(-3/4)^n;
%replace n with vector r
y=subs(yn,n,r);

figure(1)
clf

subplot(211)
plot(r,x);

subplot(212)
plot(r,y)

return;
