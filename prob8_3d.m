
prob8_3a

% by page 329 or 294 to get the impulse response for low pass filter with cut off
% freq wc0=2*pi*fc0;where fco=1500
% h(t)=sin(W*t)/(pi*t)
ts=[-20:20]*Ts;
h=sin(2*pi*1500*ts)./(pi*ts)
nan=find(isnan(h));
% using l'hospitals rule for ts=0
h(nan)=3000;
H=fftshift(fft(h,8192));

ham=hamming(41)';
Ham=fftshift(fft(ham,8192));

hm=h.*ham;
Hm=fftshift(fft(hm,8192));

figure(2)
clf

subplot(611)
plot(ts*fs,h);
title('ts*fs vs h--note here x axis is not in sec');

subplot(612)
plot(ham);
title('ham--hamming window of length 41');

subplot(613)
plot(hm);
title('h*ham');

subplot(614)
plot(F,abs(H));
title('F vs abs H');

subplot(615)
plot(F,abs(Ham));
title('F vs abs Ham');

subplot(616)
plot(F,abs(Hm));
title('F vs abs Hm');

return
