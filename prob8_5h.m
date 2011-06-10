
prob8_5g

close(figure(1));
close(figure(2));
close(figure(3));

xx1=A*cos(wm*t);
yy1=cos(wm*t+m*sin(wm*t));

figure(4)
clf

plot(t,xx1,'r',t,yy1,'b');
legend('xx1','yy1');

return
