clear
clc

t=linspace(0,30); 

m=1;
zeta=2^(-1/2);

k=1;
wn=(k/m)^(1/2);
a=[1 2*zeta*wn wn^2];
b=[wn^2];
h1=impulse(b,a,t);
s1=step(b,a,t);

k=0.09;
wn=(k/m)^(1/2);
a=[1 2*zeta*wn wn^2];
b=[wn^2];
h2=impulse(b,a,t);
s2=step(b,a,t);

k=4;
wn=(k/m)^(1/2);
a=[1 2*zeta*wn wn^2];
b=[wn^2];
h3=impulse(b,a,t);
s3=step(b,a,t);

figure(4)
clf

subplot(321)
plot(t,h1)
grid
title('h1 for k=1')

subplot(322)
plot(t,s1)
grid
title('s1 for k=1')

subplot(323)
plot(t,h2)
grid
title('h2 for k=0.09')

subplot(324)
plot(t,s2)
grid
title('s2 for k=0.09')

subplot(325)
plot(t,h3)
grid
title('h3 for k=4')

subplot(326)
plot(t,s3)
grid
title('s3 for k=4')

return;
