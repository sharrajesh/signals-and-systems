% understanding about fftshift
clear
clc

load splat;

y=y(1:8192);

N=8192;
fs=8192;

Y_jw=fft(y);
w=(0:N-1)*(2*pi/N);

Y=fftshift(Y_jw);
w1=linspace(-pi*fs,pi*fs,N); %raj method

Y2=abs(Y);

% for even length vector fftshift is it's own inverse
y_inv=ifft(fftshift(Y));
y2_inv=ifft(fftshift(Y2));

figure(1)
clf

subplot(211)
plot(y);
sound(y,fs);

pause(2);

subplot(212)
plot(abs(y2_inv));
sound(y2_inv,fs);
