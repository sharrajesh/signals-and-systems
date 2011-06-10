% first run the tut5_4a.m and then tut5_4b and then tut5_4d.m

N2=1000;
w2=[0:N2-1].*2*pi/N2;
H2=fft(h,N2);

Hmn=fft(h,N);

figure(4)
clf

subplot(311)
plot(w2,abs(H2));
title('fft at 1000 freq samples');

subplot(312)
plot(ws,abs(Hmn));
title('fft at 9 freq samples');

subplot(313)
plot(ws,Hm);
title('manual');

return;
