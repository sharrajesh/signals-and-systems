% run prob6_4ab.m
n=8192;
wn=[0:n-1]*2*pi/n;

X=fft(x,n);
Xn=fft(xnoise,n);


figure(3)
clf

subplot(231)
plot(wn,abs(X));
title('abs(X)');

subplot(232)
plot(wn,angle(X));
title('angle(X)');

subplot(233)
plot(wn/pi,unwrap(angle(X)));
title('unwrapped angle(X) in pi rad/sec');

subplot(234)
plot(wn,abs(Xn));
title('abs(Xn)');

subplot(235)
plot(wn,angle(Xn));
title('angle(Xn)');

subplot(236)
plot(wn/pi,unwrap(angle(Xn)));
title('unwrapped angle(Xn) in pi rad/sec');

return