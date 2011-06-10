clc

% if the sine wave was making 1000 cycles per sec then freq in rad/sec is
% 2 pi cps (cycles per second)
cps1=1500;
ohm1=2*pi*cps1;
x1=sin(ohm1*t);
[X1,f]=ctfts(x1,T);
X1r=roff(X1);

cps2=2000;
ohm2=2*pi*cps2;
x2=sin(ohm2*t);
[X2,f]=ctfts(x2,T);
X2r=roff(X2);

figure(3)
clf

subplot(211)
stem(n(1:50),x1(1:50));

subplot(212)
stem(n(1:50),x2(1:50));

figure(4)
clf

subplot(221)
plot(f,abs(X1r));

subplot(222)
plot(f,angle(X1r));


subplot(223)
plot(f,abs(X2r));

subplot(224)
plot(f,angle(X2r));

return;
