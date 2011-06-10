
% clear
clc

nx=[0:64];

syms n0
arg=pi*(n0-32)/4;
x_n0=sin(arg)/arg;

x=subs(x_n0,n0,nx);
nan=find(isnan(x));
x(nan)=1;

w=linspace(-pi,pi,256);
X=fftshift(fft(x,256));

wc=pi/2;
x1=x.*cos(wc*nx);
X1=fftshift(fft(x1,256));

figure(6)
clf

subplot(611)
plot(nx,x);
title('nx vs x')

subplot(612)
plot(nx,x1);
title('nx vs x1')

subplot(613)
plot(w,abs(X));
title('w vs abs X')

subplot(614)
plot(w,unwrap(angle(X)));
title('w vs angle X')

subplot(615)
plot(w,abs(X1));
title('w vs abs X1')

subplot(616)
plot(w,unwrap(angle(X1)));
title('w vs angle X1')

return
