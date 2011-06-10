% run prob6_4ab.m
y1n=filter(b1,a1,xnoise);
y2n=filter(b2,a2,xnoise);
y3n=filter(b3,a3,xnoise);

n=8192;
wn=[0:n-1]*2*pi/n;

Y1n=fft(y1n,8192);
Y2n=fft(y2n,8192);
Y3n=fft(y3n,8192);

% soundsc(xnoise);
% pause(5);
% 
% soundsc(y1n);
% pause(3);
% soundsc(y2n);
% pause(3);
% soundsc(y3n);
% pause(3);

figure(2)
clf

subplot(331)
plot(wn,abs(Y1n));
title('abs(Y1n)');

subplot(332)
plot(wn,angle(Y1n));
title('angle(Y1n)');

subplot(333)
plot(wn/pi,unwrap(angle(Y1n)));
title('unwrapped angle(Y1n) in pi rad/sec');

subplot(334)
plot(wn,abs(Y2n));
title('abs(Y2n)');

subplot(335)
plot(wn,angle(Y2n));
title('angle(Y2n)');

subplot(336)
plot(wn/pi,unwrap(angle(Y2n)));
title('unwrapped angle(Y2n) in pi rad/sec');

subplot(337)
plot(wn,abs(Y3n));
title('abs(Y3n)');

subplot(338)
plot(wn,angle(Y3n));
title('angle(Y3n)');

subplot(339)
plot(wn/pi,unwrap(angle(Y3n)));
title('unwrapped angle(Y3n) in pi rad/sec');

return