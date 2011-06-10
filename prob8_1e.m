
% first run prob8_1d or c
clear
clc

% prob8_1d
prob8_1c

Ha=fftshift(fft(halpha,256));
wa=linspace(-pi,pi,256);

figure(5)
clf

subplot(211)
plot(wa,abs(Ha));

subplot(212)
plot(wa,unwrap(angle(Ha)));

return
