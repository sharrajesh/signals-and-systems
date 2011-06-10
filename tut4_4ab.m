% understanding about fftshift
clear
clc

w=linspace(0,10);

figure(1)
clf
a01=3;
a1=[1 a01];
b1=[a01];
freqs(b1,a1,w);

H1=a01./(a01+j*w); % better way to represent freq resp.

figure(2)
subplot(211)
loglog(w,abs(H1));
set(gca,'xgrid','on','ygrid','on'); % to enable the grid
set(gca,'xlim',[w(1) w(length(w))]);% to set the limits on the xaxis

subplot(212)
semilogx(w,angle(H1));
set(gca,'xgrid','on','ygrid','on'); % to enable the grid
set(gca,'xlim',[w(1) w(length(w))]);% to set the limits on the xaxis

figure(3)
clf
a02=1/3;
a2=[1 a02];
b2=[a02];
freqs(b2,a2,w);


H2=a02./(a02+j*w);

figure(4)
subplot(211)
loglog(w,abs(H2));
set(gca,'xgrid','on','ygrid','on'); % to enable the grid
set(gca,'xlim',[w(1) w(length(w))]);% to set the limits on the xaxis

subplot(212)
semilogx(w,angle(H2));
set(gca,'xgrid','on','ygrid','on'); % to enable the grid
set(gca,'xlim',[w(1) w(length(w))]);% to set the limits on the xaxis
