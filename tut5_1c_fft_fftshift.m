%proper use of dtftsinc function
clear
clc

N=100;

%note that if N is odd then range could be just -N/2:N/2 but for even N it
%has to be as follows
w=[-N/2:N/2-1].*2*pi/N;
x=[ones(1,11)];

X1=fft(x,N);
X=fftshift(X1);

figure(3)
clf
subplot(211)
plot(w,abs(X))
subplot(212)
plot(w,angle(X))