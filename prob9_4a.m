
clear
clc

b1=[4];
a1=[1 2 17];

zs1=roots(b1);
ps1=roots(a1);

figure(1)
clf
plot(real(ps1),imag(ps1),'rX');

return

