clear
clc

a1=1;
b1=[0 0 0 1];
N=1024;

[H1 w1]=freqz(b1,a1,N);

figure(1)
clf
subplot(211)
plot(w1,abs(H1));

subplot(212)
plot(w1,angle(H1));

return