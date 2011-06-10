
prob8_5b

% note that here modulation index m=kf*A/wm
m=A/wm;

% by p614
y1=cos(wm*t+m*sin(wm*t));

% by p617
% build y2 using x2
y2=cos(wm*t+x2.*t);

figure(1)
clf

subplot(211)
plot(t,x1,'r',t,y1,'b');
legend('x1','y1');

subplot(212)
plot(t,x2,'r',t,y2,'b');
legend('x2','y2');

return