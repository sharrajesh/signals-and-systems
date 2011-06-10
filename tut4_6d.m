%understanding amplitude modulation
clear
clc

load ctftmod.mat
fprintf('f1 = %d f2 = %d\n', f1, f2);

%signal dash modulated by cos(2 pi f1 t)
y=dash.*cos(2*pi*f1*t(1:length(dash)));
yo=lsim(bf,af,y,t(1:length(y)));

figure(1)
gr=2; %graphic rows

subplot(gr,1,1)
plot(t(1:length(y)),y);
title('y without filtering');

subplot(gr,1,2)
plot(t(1:length(yo)),yo);
title('y after filtering');

%from the magnitude section it looks like that lower frequency components 
%will pass without attenuation and higher frequency components will be
%subsided
figure(2)
freqs(bf,af)
