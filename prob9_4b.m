
clear
clc

b1=[4];
a1=[1 2 17];

zs1=roots(b1);
ps1=roots(a1);

w=[-10:0.5:10];
s=j*w;
H1s=4./(s.^2+2.*s+17);

H1=freqs(b1,a1,w);

figure(2)
clf

subplot(211)
plot(w,abs(H1s));
title('as a result of using the transfer function');

subplot(212)
plot(w,abs(H1));
title('as a result of using the function freqs');

return

