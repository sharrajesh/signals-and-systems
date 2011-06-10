%first run tut5_5a.m
w=r.*2*pi/N;

X=fft(x);
Y=fft(y);

figure(2)
clf

subplot(211)
plot(w,abs(X));

subplot(212)
plot(w,abs(Y))

return;
