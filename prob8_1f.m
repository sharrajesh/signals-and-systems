
% first run prob8_1b 1c

clear
clc

prob8_1c

nx=[0:128];

syms n0
x_n0=sin(pi*n0/8);

x=subs(x_n0,n0,nx);
X=fftshift(fft(x));

% response to ideal hilbert transform filter
yh=conv(x,h);
% note that x is defined on range nx and h is defined on range nh
% nyh will be defined as follows
nyh=nx(1)+nh(1):nx(end)+nh(end);

% response to shifted hilbert transform filter
yhalpha=conv(x,halpha);
nyhalpha=nx(1)+nhalpha(1):nx(end)+nhalpha(end);

Yh=fftshift(fft(yh));
Yhalpha=fftshift(fft(yhalpha));

wppx=linspace(-pi,pi,length(x));
wppy=linspace(-pi,pi,length(yh));

figure(5)
clf

subplot(711)
plot(nx,x);
title('nx vs x - input')

subplot(712)
plot(nyh,real(yh));
title('nyh vs yh - response of ideal hilbert transform - output')

subplot(713)
plot(nyhalpha, real(yhalpha));
title('nyhalpha vs yhalpha - response of shifted hilbert transform - output')

subplot(714)
plot(wppx,real(X));
title('real(X) -- note we are not using abs here - input')

subplot(715)
plot(wppy,real(Yh));
title('real(Yh) -- note we are not using abs here - output')

subplot(716)
plot(wppx,imag(X));
title('imag(X) -- note we are not using abs here - input')

subplot(717)
plot(wppy,imag(Yh));
title('imag(Yh) -- note we are not using abs here - output')

return 
