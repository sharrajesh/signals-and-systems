% first run prob7_3a.m
clc

N=2048;
wk=[0:N-1]*2*pi/N;

X1=fft(x1,N);
X2=fft(x2,N);

figure(2)
clf

subplot(211)
plot(wk,abs(X1));

subplot(212)
plot(wk,abs(X2));

return
