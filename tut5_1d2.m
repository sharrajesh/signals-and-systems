%proper use of dtftsinc function
clear
clc

N=100;
%note that here the equation has been shifted left by half of the time
%domain hence
w1=[-N/2:N/2-1].*2*pi/N;

%from the example on P365 N1=5 and N1+1/2 = 2N1+1/2 = 11/2
M=11;

%dtftsinc return sin Mw/2 / sin w/2
X=dtftsinc(M,w1);

figure(5)
clf
subplot(211)
plot(w1,abs(X))
subplot(212)
plot(w1,angle(X))

%Note that this matches exactly with tut5_1d1.m