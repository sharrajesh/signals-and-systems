clc

e1=xhat2-djia(1:N);
e1s=e1.*e1;

e21=x-xhat2(p+1:N);
e2=[zeros(p,1);e21];
e2s=e2.*e2;

e31=x+X*a;
e3=[zeros(p,1);e31];
e3s=e3.*e3;

figure(3)
clf

subplot(311)
plot(week,e1s);

subplot(312)
plot(week,e2s);

subplot(313)
plot(week,e3s);

return
