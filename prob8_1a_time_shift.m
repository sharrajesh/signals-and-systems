
clear
clc

syms n0 
h_n0=(1-(-1)^n0)/(pi*n0);

N=20;
Nt=2*N+1;
n=[-N:N];
h=subs(h_n0,n0,n);
nan=find(isnan(h));
h(nan)=0;

% time shifted or time delayed h but over the same interval n=[-N:N]
nshift=N/2;
h_n0s=(1-(-1)^(n0-nshift))/(pi*(n0-nshift));
ns=[-N:N];
hs=subs(h_n0s,n0,ns);
nan=find(isnan(hs));
hs(nan)=0;
Hs=fftshift(fft(hs));

wpp=linspace(-pi,pi,Nt);
w02p=linspace(0,2*pi,Nt);

% ifftshift will undo the results of fftshift. If the matrix X contains an 
% odd number of elements, ifftshift(fftshift(X)) must be done to obtain 
% the original X. Simply performing fftshift(X) twice will not produce X.
Ht=fft(h);
Hts=fftshift(Ht);
Htss=ifftshift(Hts);
hi=(ifft(Ht));

% to produce a shift in time domain by alpha time sample and since H is
% define over w
alpha=N/2;
Htsalpha=Hts.*exp(-j*wpp*alpha);
hiaplha=ifft(ifftshift(Htsalpha));

figure(1)
clf

subplot(621)
plot(n,real(h));
title('impulse responce calculated analytically = real(h)');

subplot(622)
plot(ns,real(hs));
title('real of hs=shifted h');

subplot(623)
plot(wpp, abs(Hs));
title('fft of hs');

subplot(624)
plot(wpp, unwrap(angle(Hs)));
title('unwrap angle Hs');

subplot(625)
plot(wpp, abs(Hts));
title('fft of h');

subplot(626)
plot(w02p, unwrap(angle(Hts)));
title('unwrap angle of fft of h');

subplot(627)
plot(wpp, abs(Htsalpha));
title('Htsalpha');

subplot(628)
plot(wpp, unwrap(angle(Htsalpha)));
% plot(wpp, -wpp*alpha);
title('unwrap angle of Htsalpha');

subplot(629)
plot(w02p, abs(Htss));
title('ifftshift of Hts=Htss');

subplot(6,2,10)
plot(w02p, unwrap(angle(Htss)));
title('unwrap angle of Htss');

subplot(6,2,11)
plot(n,real(hi));
title('real of hi=ifft(Ht) should be same as real of h');

subplot(6,2,12)
plot(n,real(hiaplha));
title('real of hiaplha=ifft of ifftshift of (Htsalpha)');

return
