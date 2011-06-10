% understanding about fftshift
clear
clc

t=linspace(0,5);

a01=3;
a1=[1 a01];
b1=[a01];

h1=impulse(b1,a1,t);

a02=1/3;
a2=[1 a02];
b2=[a02];

h2=impulse(b2,a2,t);

figure(1)
clf

subplot(211)
plot(t,h1);

subplot(212)
plot(t,h2);