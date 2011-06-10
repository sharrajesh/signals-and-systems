
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

subplot(511)
plot(n,s);
title('s=s1+s2+s3');

subplot(512)
plot(n,so);
title('after 40 appllications of the filter to s');

subplot(513)
plot(n(1:150),so(1:150));
title('after 40 appllications of the filter to s');

subplot(514)
plot(n(150:300),so(150:300));
title('after 40 appllications of the filter to s');

subplot(515)
plot(n(300:512),so(300:512));
title('after 40 appllications of the filter to s');

return;
