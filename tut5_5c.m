%first run tut5_5a.m and tut5_5b.m
%Y=H*X =>H=Y/X
H=Y./X;
h=ifft(H);

figure(3)
clf

subplot(211)
plot(w,abs(H));

subplot(212)
plot(abs(h));

return;
