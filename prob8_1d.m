
clear
clc

syms n0 
h_n0=(1-(-1)^n0)/(pi*n0);

N=20;
nh=[-N:N];
h=subs(h_n0,n0,nh);
nan=find(isnan(h));
h(nan)=0;

% time shifted or time delayed h but over the same interval nh=[-N:N]
alpha=N;
h_n0s=(1-(-1)^(n0-alpha))/(pi*(n0-alpha));
ns=[0:40];
hs=subs(h_n0s,n0,ns);
nan=find(isnan(hs));
hs(nan)=0;

wpp=linspace(-pi,pi,length(h));

% time shift
H=fftshift(fft(h));
Halpha=H.*exp(-j*wpp*alpha);
halpha=ifft(ifftshift(Halpha));
nhalpha=nh;

figure(4)
clf

subplot(511)
stem(nh,real(h));
title('nh vs h');

subplot(512)
stem(ns, hs);
title('ns vs hs');

subplot(513)
plot(nhalpha, halpha);
title('nhalpha vs halpha');

subplot(514)
plot(wpp, abs(Halpha));
title('wpp vs abs Halpha');

subplot(515)
plot(wpp, unwrap(angle(Halpha)));
title('wpp vs angle Halpha');

return
