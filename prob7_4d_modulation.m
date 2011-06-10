% first run prob7_4ab.m

clc

% note that to left shift the signal in frequency domain by w0 we have to
% multiply the signal in time domain by exp(-j*w0*n)
% hence in hertz we have to left shift by f0=2500
f0=2500;
w0=2*pi*f0;

% modulation
% note that to left shift we have to multiply exp(j*w0*t)
% note the use of t instead of n
xm=exp(j*w0*t).*x;

Xm=fftshift(fft(xm,fs));

% The FFT contains information between 0 and fs and same as in
% prob7_4_fft_test.m but after you shift it to middle
% freq in hertz
wh=(fs/2)*linspace(-1,1,fs);
% freq in radians per sec
wrps=2*pi*wh;

figure(3);
clf

subplot(211)
plot(wh,abs(Xm));
xlabel('x axis in hertz');

subplot(212)
plot(wrps,abs(Xm));
xlabel('x axis radians per sec');

return
