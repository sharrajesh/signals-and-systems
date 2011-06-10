% understanding about fftshift
% 
clear
clc

load splat;
%sound(y,Fs);

y=y(1:8192);

N=8192;
fs=8192;

Y_jw=fft(y);
w=(0:N-1)*(2*pi/N);

Y=fftshift(Y_jw);
w1=linspace(-pi*fs,pi*fs,N); %raj method
w2=[-pi:2*pi/N:pi-pi/N]*fs;

% for even length vector fftshift is it's own inverse
y_inv=ifft(fftshift(Y));

figure(1)
clf
subplot(211)
plot(w,real(Y_jw));

subplot(212)
plot(w,imag(Y_jw));

figure(2)
subplot(311)
plot(y);
subplot(312)
plot(real(y_inv));
subplot(313)
plot(imag(y_inv));

figure(3)
clf
subplot(511)
plot(w1,real(Y));

subplot(512)
plot(w1,imag(Y));

subplot(513)
plot(w2,real(Y));

subplot(514)
plot(w2,imag(Y));

subplot(515)
plot(w2,abs(Y));
