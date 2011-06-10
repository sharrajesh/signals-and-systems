
prob8_5h
close(figure(4));


Xx1=fftshift(fft(xx1));
axx1=Xx1/N;

Yy1=fftshift(fft(yy1));
ayy1=Yy1/N;

figure(2)
clf

subplot(211)
stem(wk,abs(axx1));
a=axis
axis([-3*pi 3*pi a(3:4)]);

subplot(212)
stem(wk,abs(ayy1));
a=axis
axis([-3*pi 3*pi a(3:4)]);

return
