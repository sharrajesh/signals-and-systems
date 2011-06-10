
clear
clc

t=linspace(0,1,500);
w=linspace(-pi,pi,500);

% carrier frequency
wc=40*pi;

% carrier to be added to make sure x is always positive
A=1;

% modulating signal x
m=0.5; % maximum value of the modulating signal
wm=10*pi; %maximum freq content inside the modulating signal
x=m*cos(wm*t);
X=fftshift(fft(x));

% carrier signal c
c=cos(wc*t);
C=fftshift(fft(c));

y=(A+x).*c;
Y=fftshift(fft(y));

m=1;
x2=m*cos(wm*t);
y2=(A+x).*c;

figure(1)
clf

subplot(5,2,1)
plot(t,x)
title('t vs x');

subplot(5,2,2)
plot(t,c)
title('t vs x');

subplot(5,2,3)
plot(t,y)
title('t vs y');

subplot(5,2,4)
plot(t,y2)
title('t vs y2');

subplot(5,2,5)
plot(w,abs(X))
title('w vs abs X');

subplot(5,2,6)
plot(w,unwrap(angle(X)))
title('w vs unwrap angle X');

subplot(5,2,7)
plot(w,abs(C))
title('w vs abs C');

subplot(5,2,8)
plot(w,unwrap(angle(C)))
title('w vs unwrap angle C');

subplot(5,2,9)
plot(w,abs(Y))
title('w vs abs Y');

subplot(5,2,10)
plot(w,unwrap(angle(Y)))
title('w vs unwrap angle Y');

return