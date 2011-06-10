
clc

Ti=1/8;
ti=[-2:Ti:2];

% note that os is the sampling freq 
os=2*pi*1/Ti;

syms t 

hbl_t=sin(os*t/2)/(os*t/2);
hbl=subs(hbl_t,t,ti);
hbl((length(ti)+1)/2)=1;

hbls=subs(hbl_t,t,ts);
hbls((length(ts)+1)/2)=1;

hlin_t=1-abs(t)/2;
hlin=subs(hlin_t,t,ti);
hlins=subs(hlin_t,t,ts);

figure(2)
clf

subplot(231)
plot(ti,hbl);
title('band limited reconstruction');

subplot(232)
ws=linspace(-pi,pi,length(ti));
plot(ws,abs(fftshift(fft(hbl))));
title('freq domain');

subplot(233)
plot(ti,hlin);
title('linear reconstruction');

subplot(234)
plot(ts,hbls);
title('band limited reconstruction');

subplot(235)
ws=linspace(-pi,pi,length(ts));
plot(ws,abs(fftshift(fft(hbls))));
title('freq domain');

subplot(236)
plot(ts,hlins);
title('linear reconstruction');

return 

