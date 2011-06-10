
clear
clc

a=[-1 2];
b=[1]; % for anticause

t=[-5:0.01:5];
t_gte_0=t(t>=0); % those t which are greater than and equal to 0
t_lt_0=t(t<0); % those t which are less than 0
h=impulse(b,a,t_gte_0);
h=[zeros(1,length(t_lt_0)) h'];
hf=fliplr(h); % h flipped

unt=[t<=0];
he=-exp(-2*t).*unt;

figure(1)
clf

subplot(311)
plot(t,h);

subplot(312)
plot(t,hf);
title('h flipped');

subplot(313)
plot(t,he);

return