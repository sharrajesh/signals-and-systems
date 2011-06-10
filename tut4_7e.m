%symbolic computation of continuous time fourier transform
clear
clc

syms t w 

u1=heaviside(t);
u2=heaviside(t+2);
u3=heaviside(t-2);
u4=u2-u3;

subplot(411)
ezplot(u1,[-10 10]);
subplot(412)
ezplot(u2,[-10 10]);
subplot(413)
ezplot(u3,[-10 10]);
subplot(414)
ezplot(u4,[-10 10]);
