
prob8_5d
close(figure(1));

wc=2*pi; % carrier freq
wm=pi/4;
A=0.2;
m=A/wm; % modulation index

% narrow band approximation to x1 is y1a
y1a=cos(wc*t)-m*(sin(wm*t)).*(sin(wc*t));
Y1a=fftshift(fft(y1a));
ay1a=Y1a/N;

figure(3)
clf

subplot(211)
plot(t,y1a);
title('t vs narrow band approx of y1');

subplot(212)
plot(wk,abs(ay1a));
grid minor;
title('wk vs fourier series coeffiecients of y1a');
a=axis
axis([-3*pi 3*pi a(3:4)]);

return
