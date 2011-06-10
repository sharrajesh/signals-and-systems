
clear
clc

a=[1 2];
b=[1];

t=[-5:0.01:5];
t_gte_0=t(t>=0); % those t which are greater than and equal to 0
t_lt_0=t(t<0); % those t which are less than 0
h=impulse(b,a,t_gte_0);
h=[zeros(1,length(t_lt_0)) h'];

ut=[t>=0];
he=exp(-2*t).*ut;

figure(1)
clf

subplot(211)
plot(t,h);

subplot(212)
plot(t,he);

return