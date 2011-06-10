clear
clc

a2=[1 -3/4];
b2=[-3/4 1];
N=1024;

[H2 w2]=freqz(b2,a2,N);

figure(2)
clf
subplot(211)
plot(w2,abs(H2));

subplot(212)
plot(w2,angle(H2));

return