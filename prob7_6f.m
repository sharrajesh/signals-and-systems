
clc

% sampling period
T=1;

% time samples
t=[0:T:100];

omegac=pi/10;

xd=cos(omegac*t);

% derivative of xd
d_xd=-omegac*sin(omegac*t);

figure(5)
clf

subplot(211)
plot(t,xd);

subplot(212)
plot(t,d_xd);

return 

