
clear
clc

% sampling frequency
fs=2000;

% time period of each sample
T=1/fs;

% since t varies between 0 and t0
t0=0.5;
t=linspace(0,t0,t0/T);

% band of frequencies on which signal is spread across
fmin=2000;
omegamin=2*pi*fmin;
fmax=3000;
omegamax=2*pi*fmax;

syms t_s
x_t_s = cos(omegamin*t_s+(omegamax-omegamin)*(t_s^2)*1/(2*t0));
omega_inst_t_s=omegamin+(omegamax-omegamin)*t_s/t0;

x=subs(x_t_s,t_s,t);
omega_inst=subs(omega_inst_t_s,t_s,t);

sound(x,1/T);

X=fftshift(fft(x,fs));

% The FFT contains information between 0 and fs and same as in
% prob7_4_fft_test.m but after you shift it to middle
% freq in hertz
wh=(fs/2)*linspace(-1,1,fs);
% freq in radians per sec
wrps=2*pi*wh;

figure(2);
clf

subplot(411)
plot(t,omega_inst);
title('instantaneous freq');

subplot(412)
plot(t(1:100),x(1:100));
title('signal in time domain');

subplot(413)
plot(wh,abs(X));
xlabel('x axis in hertz');
title('see chirp is defined only between 2000 and 3000');

subplot(414)
plot(wrps,abs(X));
xlabel('x axis radians per sec');
title('in rps between 2*pi*2000=1.256e+04 and 2*pi*3000=1.88e+04');

return
