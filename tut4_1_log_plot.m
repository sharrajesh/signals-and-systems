clear
clc

r=[0 3*pi];

figure(1)
a=[1 3];
b=[1];
freqs(b,a)

% figure(2)
% freqs(b,a)

figure(2)
w=logspace(-1,1,200); % this will fill w with 10^-1 to 10^1
for k=1:length(w)
    H(k)=3/(3+j*w(k));
end
mag=abs(H);
ang=angle(H);

subplot(211)
loglog(w,mag); % to do the log plotting
set(gca,'xgrid','on','ygrid','on'); % to enable the grid
set(gca,'xlim',[w(1) w(length(w))]);% to set the limits on the xaxis

subplot(212)
semilogx(w,ang); % we want the x axis to be logrithmic but we want y axis to be linear
set(gca,'xgrid','on','ygrid','on') 
