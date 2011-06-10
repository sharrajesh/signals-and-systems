
clear
clc

a1=[1 2 3 4 5 6];
ps1=roots(a1);

a2=[-1 2 -3 4 -5 6];
ps2=roots(a2);

figure(1)
clf

subplot(211)
plot(real(ps1),imag(ps1),'rX');
axis([-3 3 -2 2])

subplot(212)
plot(real(ps2),imag(ps2),'rX');
axis([-3 3 -2 2])

return

