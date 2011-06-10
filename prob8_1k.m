
% to build ideal hilbert transform filter and shifted filter
prob8_1d

% to build the input signal x
prob8_1i

% note that halpha is defined for -20<=nhhalpha<=20
% and x is defined for 0<=nx<=64
% xhf=conv(x,h) will -20<nxhf<20+64
nxhf=nhalpha(1)+nx(1):nhalpha(end)+nx(end);
xhf=conv(x,halpha);

% to get xhf from 0 to 64
nxh=(alpha:alpha+64);
xh=xhf(nxh);
Xh=fftshift(fft(xh,256));
wpp256=linspace(-pi,pi,256);

x2=xh.*sin(wc*nx);
X2=fftshift(fft(x2,256));

y=x1+x2;
Y=fftshift(fft(y,256));

figure(7)
clf

subplot(712)
plot(nxhf,real(xhf));
title('full conv result nxhf vs xhf')
a=axis

subplot(711)
plot(nx,real(x));
title('nx vs x')
axis(a)

subplot(713)
plot(nx,real(xh));
title('nx vs xh')
axis(a)

subplot(714)
plot(wpp256,abs(Xh));
title('abs Xh')

subplot(715)
plot(wpp256,unwrap(angle(Xh)));
title('angle Xh')

subplot(716)
plot(wpp256,abs(X2));
title('abs X2')

subplot(717)
plot(wpp256,unwrap(angle(X2)));
title('angle X2')

figure(8)

subplot(311)
plot(nx,y);
title('nx vs y- output')

subplot(312)
plot(wpp256,abs(Y));
title('abs X2')

subplot(313)
plot(wpp256,unwrap(angle(Y)));
title('angle X2')

return
