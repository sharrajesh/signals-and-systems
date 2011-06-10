%first run tut5_2a1.m
N=2048;
w=[0:N-1]*2*pi/N;
D2=fft(d(2,:),N);
D9=fft(d(9,:),N);
figure(1)
clf
subplot(211)
plot(w,abs(D2))
%first get the previous values of the axis
a=axis
%then to draw into in the specific x range
axis([0.5 1.25 a(3:4)]);
grid
subplot(212)
plot(w,abs(D9))
%first get the previous values of the axis
a=axis
%then to draw into in the specific x range
axis([0.5 1.25 a(3:4)]);
grid
return
