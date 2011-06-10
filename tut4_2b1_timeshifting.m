% how to build x(t-5)
% 
clear
clc

syms x t

x_t=exp(-2*abs(t))
y_t=subs(x_t,t,t-5) % performing the time shift

T=10;
tau=0.01;
t1=[0:tau:T-tau];

x_t_s=subs(x_t,t,t1); % finding the value of x_t for values of t
y_t_s=subs(y_t,t,t1);

figure
subplot(211)
plot(t1,x_t_s);

subplot(212)
plot(t1,y_t_s);

