
clear
clc

b1=[1 5];
a1=[1 2 3];
zs1=roots(b1);
ps1=roots(a1);

b2=[2 5 12];
a2=[1 2 10];
zs2=roots(b2);
ps2=roots(a2);

b3=[2 5 12];
a3=[1 4 14 20];
zs3=roots(b3);
ps3=roots(a3);

figure(1)
clf

subplot(311)
plot(real(zs1),imag(zs1),'rO');
hold on;
plot(real(ps1),imag(ps1),'rX');
axis([-6 1 -6 6]);
grid

subplot(312)
plot(real(zs2),imag(zs2),'rO');
hold on;
plot(real(ps2),imag(ps2),'rX');
axis([-6 1 -6 6]);
grid

subplot(313)
plot(real(zs3),imag(zs3),'rO');
hold on;
plot(real(ps3),imag(ps3),'rX');
axis([-6 1 -6 6]);
grid

return
