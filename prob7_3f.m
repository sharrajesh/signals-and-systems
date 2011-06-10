% first run prob7_3a b c d.m
clear
clc

nr=[0:124];

syms n
x1_n=(sin(0.4*pi*(n-62))/(0.4*pi*(n-62)))^2;
% note that x1 is defined for 0<=n<=124
x1=subs(x1_n,n,nr);
x1((length(x1)+1)/2)=1;

N=2048;
wk=[0:N-1]*2*pi/N;

% note here fft was calculated for N=2048 hence it is defines
% N*ak for 0<k<2048
X1=fft(x1,N);

% test of fft and ifft
% since X1 define N*ak for 0<=k<=2048 hence ifft should define x(n)
% for 0<=n<=2048
x1i=ifft(X1);
X1i=fft(x1i,N);
% note that X1i should be same as X1

hint=0.5*sinc(0.5*(-32:32));
ham=hamming(65);
% note that here h is defined for -32<=nh<=32
nh=[-32:32];
h=hint.*ham';
H=fft(h,N);

% in example 7.3d we have seen that x1 was aliased after downsampling
% hence we will try to filter x1, there are 2 way we could go ahead
% by conv of x1 and h or by multipling X1 and H and then ifft
xfc=conv(x1,h);
Xfc=fft(xfc,N);

M=2;
xdfc=xfc(1:M:length(xfc));
Xdfc=fft(xdfc,N);

figure(1)
clf

subplot(511)
plot(nr,x1);
title('nr against x1');

subplot(512)
plot(x1i); %careful here 
title('ifft of X1 but over 2048 values');

subplot(513)
plot([1:length(x1)],x1i(1:length(x1))); %careful here 
title('ifft of X1 but over only length of x1');

subplot(514)
plot(wk,abs(X1));
title('abs of X1');

subplot(515)
plot(wk,abs(X1i));
title('abs of ifft calculated X1i');

figure(2);
clf

subplot(611)
plot(nh,h);
title('h defined over -32<=nh<=32');

subplot(612)
plot(wk,abs(H));

subplot(613)
plot(xfc);

subplot(614)
plot(wk,abs(Xfc));

subplot(615)
plot(xdfc);

subplot(616)
plot(wk,abs(Xdfc));

return 
