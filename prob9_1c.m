
clear
clc

b=[1 2 5 0];
a=[1 -3];
zs=roots(b);
ps=roots(a);

figure(1)
clf

plot(real(zs),imag(zs),'rO');
hold on;
plot(real(ps),imag(ps),'rX');
% axis([-6 1 -6 6]);
grid

return
