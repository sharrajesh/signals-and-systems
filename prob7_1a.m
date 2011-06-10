clear
clc

% if N number of samples are taken per sec then sample freq in rad/sec is
% 2 pi N
N=8192;

% time period or sample rate in seconds is
T=1/N;

n=[0:N-1];
t=n*T;

% if the sine wave was making 1000 cycles per sec then freq in rad/sec is
% 2 pi cps (cycles per second)
cps0=1000;
ohm0=2*pi*cps0;

x=sin(ohm0*t);

figure(1)
clf

subplot(211)
% note that this may not look right since we are plotting for 1 sec
% which is like a very long time
stem(n(1:50),x(1:50));

subplot(212)
plot(t(1:50),x(1:50));

return;
