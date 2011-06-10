clear
clc

p=hamming(75);
wvtool(p);

a=[1 -1.1172 0.9841 -0.4022 0.2247];
b=[0.2247 -0.4022 0.9841 -1.1172 1];

N=1024;
[H,omega]=freqz(b,a,N,'whole');

figure(2)
clf
freqz(b,a,N,'whole');

figure(3)
clf
subplot(211)
plot(omega/pi,abs(H));
axis([0 2 -2 2])
title('x in pi rad/sec y in abs(H)');
grid

subplot(212)
plot(omega/pi,unwrap(angle(H))*180/pi);
title('x in pi rad/sec y is unwrap(angle(H)) in degrees');
grid

return
