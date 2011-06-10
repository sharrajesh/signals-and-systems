
% first run prob7_3a b c.m
clc

% downsampling by a factor of 2 i.e M=2
M=2;

%this is where we are getting every 3rd sample 
xd1=x1(1:M:length(x1));
Xd1=fft(xd1,N);

xd2=x2(1:M:length(x2));
Xd2=fft(xd2,N);

% note that here clearly there is aliasing in xd1 but xd2 is fine
figure(4)
clf

subplot(211)
plot(wk,abs(Xd1));

subplot(212)
plot(wk,abs(Xd2));

return;
