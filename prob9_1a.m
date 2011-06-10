
clear
clc

b=[1 -1];
a=[1 3 2];

zs=roots(b);
ps=roots(a);

figure(1)
clf

plot(real(zs),imag(zs),'rO');
hold on;
plot(real(ps),imag(ps),'rX');
grid
axis([-3 3 -3 4]);

return
