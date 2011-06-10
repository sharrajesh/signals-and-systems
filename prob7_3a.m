
clear
clc

syms n

x1_n=(sin(0.4*pi*(n-62))/(0.4*pi*(n-62)))^2;
x1s_n=(sinc(0.4*(n-62)))^2;

x2_n=(sin(0.2*pi*(n-62))/(0.2*pi*(n-62)))^2;
x2s_n=(sinc(0.2*(n-62)))^2;

nr=[0:124];

x1=subs(x1_n,n,nr);
x1((length(x1)+1)/2)=1;
x1s=subs(x1s_n,n,nr);
x1s((length(x1s)+1)/2)=1;

x2=subs(x2_n,n,nr);
x2((length(x2)+1)/2)=1;
x2s=subs(x2s_n,n,nr);
x2s((length(x2s)+1)/2)=1;

figure(1)
clf

subplot(411)
plot(nr,x1);

subplot(412)
plot(nr,x1s);

subplot(413)
plot(nr,x2);

subplot(414)
plot(nr,x2s);

return
