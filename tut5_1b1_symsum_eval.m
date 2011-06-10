%proper use of symsum to include the vectors in summation with eval
clear
clc

% x=[1 2 3 4 5 6 7 8 9 10 11];
% xn=sym('x(n+1)'); 
% X=symsum(xn,'n',0,10)
% X=eval(X)

N=100;
w1=[0:N-1].*(2*pi/N);

x=[ones(1,11)];

syms n w

%note that here we are starting x from n+1 since in matlab there is no
%subscript for <= 0

xn=sym('x(n+1)*exp(-j*w*n)'); 
X=symsum(xn,n,0,10);
%now replaceing vector x with its values
Xe=eval(X); 
%now evaluating Xe for different values of w1
Xs=subs(Xe,w,w1);

figure(1)
clf
subplot(211)
plot(w1,abs(Xs))
subplot(212)
plot(w1,angle(Xs))