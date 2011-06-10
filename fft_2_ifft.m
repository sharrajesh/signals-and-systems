
syms n0
x_n0=(0.5)^n0;
n=[-10:50];

wpp=linspace(-pi,pi,length(n));
w02p=linspace(0,2*pi,length(n));

x=subs(x_n0,n0,n);
X=fftshift(fft(x));

alpha=10;
Xalpha=X.*exp(-j*wpp*alpha);

xi=ifft(ifftshift(X));
xalpha=ifft(ifftshift(Xalpha));

subplot(711)
plot(n,x);
title('n vs x')

subplot(712)
plot(wpp,abs(X));
title('wpp vs abs X')

subplot(713)
plot(wpp,unwrap(angle(X)));
title('wpp vs angle X')

subplot(714)
plot(xi);
title('xi - note that n or the x axis cannot be guessed')

subplot(715)
plot(wpp,abs(Xalpha));
title('wpp vs abs Xalpha')

subplot(716)
plot(wpp,unwrap(angle(Xalpha)));
title('wpp vs angle Xalpha')

subplot(717)
plot(real(xalpha));
title('xalpha')
