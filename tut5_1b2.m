%proper use of dtftsinc function
clear
clc

N=100;
w1=[0:N-1].*(2*pi/N);

%from the example on P365 N1=5 and N1+1/2 = 2N1+1/2 = 11/2
M=11;

%by doing the GP sum where n=11 and a=1 and r=e^-jw is
%e^-j5w*sin w 11/2 /sin w/2

%dtftsinc return sin Mw/2 / sin w/2
X=exp(-j*5*w1).*dtftsinc(M,w1);

figure(2)
clf
subplot(211)
plot(w1,abs(X))
subplot(212)
plot(w1,angle(X))

%Note that this matches exactly with tut5_1b1.m