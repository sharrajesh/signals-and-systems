% first run prob6_3a.m

% first shift the filter H to left and right by 5pi/10 
w21=-5*pi/10;
% note here that in exp we are using n1 and for h we are using L
h21=exp(j*w21*n1).*h(L);
H21=fftshift(fft(h21, 1024));

w22=5*pi/10;
h22=exp(j*w22*n1).*h(L);
H22=fftshift(fft(h22, 1024));

% for bandstop we have to remove H21+H22 from H of del[n]
del((l-1)/2+1)=1;
DEL=fftshift(fft(del,1024));

h3=del-(h21+h22);
H3=fftshift(fft(h3,1024));

figure(3)
clf

subplot(411)
plot(w,abs(H3));
title('magnitue of complex H3')

subplot(412)
plot(w,angle(H3));
title('magnitue of complex H3')

subplot(413)
plot(n1,real(h3));
title('real h');

subplot(414)
plot(n1,imag(h3));
title('complex h');

return
