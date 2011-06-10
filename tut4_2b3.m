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

y_t_s=subs(y_t,t,t1);
Y=tau*fft(y_t_s);
Y_shift=fftshift(Y);

figure(1)
clf

subplot(211)
plot(real(Y_shift));
title('real part of shifted transfrom');

subplot(212)
plot(imag(Y_shift));
title('imag part of shifted transfrom');
