% first run prob6_3b1.m

% for bandpass filter
h1=del-(h11+h12+h13+h14);
H1=fftshift(fft(h1,1024));

figure(2)
clf

subplot(411)
plot(n1,real(h1));
title('real h');

subplot(412)
plot(n1,imag(h1));
title('complex h');

subplot(413)
plot(w,abs(H1));
title('magnitue of complex H1')

subplot(414)
plot(w,angle(H1));
title('magnitue of complex H1')

return
