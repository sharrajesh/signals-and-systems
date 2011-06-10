
clear
clc

t=linspace(0,1,500);
w=linspace(-pi,pi,500);

wc=40*pi; % carrier frequency
wm=10*pi; %maximum freq content inside the modulating signal
m=0.5; % maximum value of the modulating signal
A=1; % carrier to be added to make sure x is always positive

y1=A*exp(j*wc*t);
y2=(1/2)*A*m*exp(j*(wc+wm)*t);
y3=(1/2)*A*m*exp(j*(wc-wm)*t);

vn=30;

figure(2)
clf

plot([0 real(y1(vn))],[0 imag(y1(vn))],'k-');



hold on
plot(real([y1(vn) y1(vn)+y2(vn)]),imag([y1(vn) y1(vn)+y2(vn)]),'r-');
plot(real([y1(vn) y1(vn)+y3(vn)]),imag([y1(vn) y1(vn)+y3(vn)]),'g-');
grid minor

return
