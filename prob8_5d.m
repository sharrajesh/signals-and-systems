
prob8_5c

% since the signal x1,y1 and x2,y2 are defined at discrete time samples
% we descretize it by considering x axis to be N
% 
% Since T is period for both x1 and x2 implies that both of them will be
% periodic after N samples
N=T/dt;
k=[-N/2:N/2-1];

wk=k*(2*pi/T);

Y1=fftshift(fft(y1));
ay1=Y1/N;

Y2=fftshift(fft(y2));
ay2=Y2/N;

figure(2)
clf

subplot(211)
plot(wk,abs(ay1));
title('wk vs fourier series cooef of y1');
grid minor;
a=axis
axis([-3*pi 3*pi a(3:4)]);

subplot(212)
plot(wk,abs(ay2));
title('wk vs fourier series cooef of y2');
grid minor;
a=axis
axis([-3*pi 3*pi a(3:4)]);

return