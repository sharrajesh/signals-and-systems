prob8_3d

% note that hm contains the impulse response of the low pass filter for
% the range -20 to 20 hence to get the response of the non causal filter
% append 20 zeros to input w and take the last input length result
% also see page112 and prob7_5d for non causal filter
w0=[w zeros(1,20)];
z0=filter(hm,1,w0);
nz0=length(z0);
z=z0(nz0-length(w)+1:end);
Z=fftshift(fft(z,8192));
sound(z,8192)

figure(3)
clf

plot(F,abs(Z));

return

