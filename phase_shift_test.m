w=[0:pi/100:10*pi];
xw=cos(w);

%after shifting left
xwsl=cos(w+1);

%after shifting right
xwsr=cos(w-1);

figure(1)
clf

subplot(311)
plot(w,xw);
grid minor

subplot(312)
plot(w,xwsl);
grid minor

subplot(313)
plot(w,xwsr);
grid minor

return;
