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

%constructing the signal if you know it's magnitude and angle
Y3=1*exp(j*angle(Y));

% for even length vector fftshift is it's own inverse
y_inv=ifft(fftshift(Y));
y3_inv=ifft(fftshift(Y3));

figure(1)
clf

subplot(211)
plot(w1,angle(Y));
sound(y,fs);

pause(2);

subplot(212)
plot(w1,angle(y3_inv));
sound(y3_inv,fs);
