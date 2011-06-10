% understanding about fftshift
% 
clear
clc

syms x t

x_t=exp(-2*abs(t))
y_t=subs(x_t,t,t-5) % performing the time shift

T=10;
tau=0.01;
t1=[0:tau:T-tau];

x_t_s=subs(x_t,t,t1);
X=fft(x_t_s);
X_shift=fftshift(X);

figure(1)
clf

subplot(511)
plot(t1,x_t_s);
title('x');

subplot(512)
plot(real(X));
title('real part of transform');

subplot(513)
plot(imag(X));
title('imag part of transform');

subplot(514)
plot(real(X_shift));
title('real part of shifted transfrom');

subplot(515)
plot(imag(X_shift));
title('imag part of shifted transfrom');
