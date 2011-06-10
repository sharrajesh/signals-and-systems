%understanding amplitude modulation
clear
clc

load ctftmod.mat
whos
fprintf('f1 = %d f2 = %d\n', f1, f2);

z=[dash dash dot dot];

figure(1)
gr=4; %graphic rows

subplot(gr,1,1)
plot(t,x);
title('message x');

subplot(gr,1,2)
plot(t(1:length(dash)),dash);
title('dash');

subplot(gr,1,3)
plot(t(1:length(dot)),dot);
title('dot');

subplot(gr,1,4)
plot(t,z);
title('created signal z');

%from the magnitude section it looks like that lower frequency components 
%will pass without attenuation and higher frequency components will be
%subsided
figure(2)
freqs(bf,af)
