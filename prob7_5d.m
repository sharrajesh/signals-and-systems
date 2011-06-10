
clc

% since h responce is defined for -31 to 31 hence d = 31
d=31;

n=[-127:127];

syms n_s

x_s=sinc(n_s/8);

x=subs(x_s,n_s,n);

% to get the output for non causal filter
yo=filter(h,1,[x zeros(1,d)]);
Nyo=length(yo);
% extract last length(x)
y=yo(Nyo-length(x)+1:Nyo);

y2o=filter(h,1,[y zeros(1,d)]);
Ny2o=length(y2o);
% extract last length(y)
y2=y2o(Ny2o-length(y)+1:Ny2o);

h2=conv(h,h);

figure(3)
clf

subplot(411)
plot(n,x);

subplot(412)
plot(n,y);

subplot(413)
plot(n,y2);

subplot(414)
stem(h2);

return

