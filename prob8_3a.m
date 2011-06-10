
clear
clc

load origbl;
sound(x,8192);

fs=8192; % sampling frequency fs
Ts=1/fs; % sample time
N=length(x); % length of the signal
t=[0:1/fs:(N-1)/fs]; % continuous time for each sample instant in x

% also look into prob7_4_fft_test.m
F=linspace(-fs/2,fs/2,8192);
X=fftshift(fft(x,8192));

A=0;
fc=1500;
wc=2*pi*fc;
y=(A+x').*cos(wc*t);
Y=fftshift(fft(y,8192));
% sound(y,8192);

w=y.*cos(wc*t);
W=fftshift(fft(w,8192));
% sound(w,8192);

figure(1)
clf

subplot(311)
plot(F,abs(X));

subplot(312)
plot(F,abs(Y));

subplot(313)
plot(F,abs(W));

return
