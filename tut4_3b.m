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

Y1=conj(Y);

% for even length vector fftshift is it's own inverse
y_inv=ifft(fftshift(Y));

y1_inv=ifft(fftshift(Y1));

figure(1)
clf

subplot(211)
plot(y);
sound(y,fs);

pause(2);

subplot(212)
plot(real(y1_inv));
sound(y1_inv,fs);
