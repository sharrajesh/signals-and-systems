
% first run prob7_6e f.m
clc

% note that here hdd is same as h in the question and it is defined for
% nh = 0 and Nh = 17
nh=0;
Nh=length(hdd);

% nx=0 and Nx=100
nxd=0;
Nxd=length(xd);

% hence the conv(xd,h) is defined for nx+nh <--> Nx+Nh-2
yd=conv(hdd,xd);

nyd=[nxd+nh:Nxd+Nh-2];

% derivative is required on on time 
tr=[20:T:100];

% derivative is required on delayed time
td=tr-d;

ydtrue=-omegac*sin(omegac*td);

figure(6)
clf

subplot(311)
plot(nyd,yd);

subplot(312)
plot(tr,ydtrue);
a=axis
title('analytically calculated');

subplot(313)
plot(nyd,yd);
axis(a);
title('calculated using the filter');

return
