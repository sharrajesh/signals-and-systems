clear
clc

for n=0:50
    x(n+1)=(3/4)^n;
end

a1=1;
b1=[0 0 0 1];
y1=filter(b1,a1,x);

a2=[1 -3/4];
b2=[-3/4 1];
y2=filter(b2,a2,x);

figure(4)
clf

subplot(311)
plot(x);
title('input x');

subplot(312)
plot(y1);
title('output(y1) of filter 1');

subplot(313)
plot(y2);
title('output(y2) of filter 2');

return
