%proper use of symsum to include the vectors in summation with eval
clear
clc

N=2;

w1=[0:N-1].*2*pi/N;

x1=[1:100];
x2=[1 zeros(1,99)];

X1=fft(x1,N)
X2=fft(x2,N)

%you can use return to retun from the script 
%return

syms n w

%note that here we are starting x from 0 since in matlab there is no
%subscript for <= 0
xn=sym('x(n+1)*exp(-j*w*n)'); 

X=symsum(xn,n,0,99);

%x replacing x with x1 and x2
X1=subs(X,'x','x1');
X2=subs(X,'x','x2');

%now replaceing vector x with its values
X1e=eval(X1); 
X2e=eval(X2);

%now evaluating Xe for different values of w1
X1s=subs(X1e,w,w1)
X2s=subs(X2e,w,w1)
