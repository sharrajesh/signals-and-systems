%proper use of symsum to include the vectors in summation with eval
clear
clc

N=100;
%note that here the equation has been shifted left by half of the time
%domain hence
w1=[-N/2:N/2-1].*2*pi/N;

x=[ones(1,11)];

syms n w

%note that here we are starting x from -5 since in matlab there is no
%subscript for <= 0

xn=sym('x(n+6)*exp(-j*w*n)'); 

%note that here the equation has been shifted left by half of the time
%domain
X=symsum(xn,n,-5,5);

%now replaceing vector x with its values
Xe=eval(X); 
%now evaluating Xe for different values of w1
Xs=subs(Xe,w,w1);
Xsr=real(Xs);

figure(4)
clf
subplot(211)
plot(w1,abs(Xsr))
subplot(212)
plot(w1,angle(Xsr))