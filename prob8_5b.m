
clear
clc

A=4;

T=16;
dt=0.05; % sampling period
t=[0:dt:T-dt];

wm=pi/8; % message freq in rad per sec
tm=(2*pi)/wm; % message time period in secs = (2pi/(pi/8)) = 16 secs

x1=A*cos(wm*t);

% build x2
g=zeros(1,length(t));
for i=1:length(t)
    if t(i) >= 0 && t(i)<(tm/2)
        g(i)=1;
    elseif t(i) >= (tm/2) && t(i)<(tm)
        g(i)=-1;
    else
        g(i)=0;
    end
end

x2=A*g;

figure(1)
clf

subplot(211)
plot(t,x1);

subplot(212)
plot(t,x2);

return 
