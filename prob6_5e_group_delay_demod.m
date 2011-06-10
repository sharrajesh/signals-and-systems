
s=s11+s21+s31;
n=[1:length(s)];

% note that the delay introduced at three different freq are
% by looking at the grap
nd1=10;
nd2=5;
nd3=2;

% note that after each application of the filter we keep shifting the 
% individual pulses

so=s;
for i=1:40
    so=filter(b,a,so);
end;

figure(8)
clf

subplot(211)
plot(n,s);
title('s=s1+s2+s3');

subplot(212)
plot(n,so);
title('after 10 appllications of the filter to s');

return;
