% first run prob7_4ab d e.m

clc

% since ym was sampled at fs=8192, hence to sample ym at 2048 we have to
% downsample is by the factor of 8192/2048
fsd=2048;
M=fs/fsd;

ym2=ym(1:M:length(ym));
Ym2=fftshift(fft(ym2,fsd));

% The FFT contains information between 0 and fs and same as in
% prob7_4_fft_test.m but after you shift it to middle
% freq in hertz
whd=(fsd/2)*linspace(-1,1,fsd);
% freq in radians per sec
wrpsd=2*pi*whd;

figure(5)
clf

subplot(211)
plot(whd,abs(Ym2));
xlabel('x axis in hertz');

subplot(212)
plot(wrpsd,abs(Ym2));
xlabel('x axis radians per sec');

return 
