
clear
clc

T=0.1; % can be used as the half the duration of each pulse
dt=T/10; % the time interval when the samples may be taken
ns=T/dt; % the number of samples taken per pulse duration

fprintf('number of samples per pulse duration %d\n',ns);

t=[-T:dt:T];
np=length(t);

p=zeros(1,np);
for i=1:np
    if abs(t(i)) < T
        p(i)=1-abs(t(i))/T;
    end
end

figure(1)
clf

stem(t,p);
title('t vs p');

return
