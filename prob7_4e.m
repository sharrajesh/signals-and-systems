% first run prob7_4ab d.m

clc

% note that fft returns information between 0 and fs
% and shifted fft returns information between -fs/2 to fs/2
% to get the correct cut off freq
% cut freq
fc=1000;
wc=fc/(fs/2);

% impulse responce of filter with above wc is
h=wc*sinc([-16:16]*wc).*hamming(33)';

ym=filter(h,1,xm);

Ym=fftshift(fft(ym,fs));

sound(ym,1/T);

figure(4);
clf

subplot(311)
plot(h);
xlabel('filter impulse resonce');

subplot(312)
plot(wh,abs(Ym));
xlabel('x axis in hertz');

subplot(313)
plot(wrps,abs(Ym));
xlabel('x axis radians per sec');

return
