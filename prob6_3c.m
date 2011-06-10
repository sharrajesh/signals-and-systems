% first run prob6_3a.m

% first shift the filter H to left and right by 5pi/10 
w21=-5*pi/10;
% note here that in exp we are using n1 and for h we are using L
h21=exp(j*w21*n1).*h(L);
H21=fftshift(fft(h21, 1024));

w22=5*pi/10;
h22=exp(j*w22*n1).*h(L);
H22=fftshift(fft(h22, 1024));

h2=h21+h22;
H2=fftshift(fft(h2,1024));

figure(3)
clf

subplot(511)
plot(w,abs(H21),'r',w,abs(H22),'b');
title('magnitude of shifted frequency responces')

subplot(512)
plot(w,abs(H2));
title('magnitue of complex H1')

subplot(513)
plot(w,angle(H2));
title('magnitue of complex H1')

subplot(514)
plot(n1,real(h2));
title('real h');

subplot(515)
plot(n1,imag(h2));
title('complex h');

return
