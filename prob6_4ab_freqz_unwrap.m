clear
clc

load phdist
load orig

% sound(xnoise,8192);
% sound(x,8192);

N=1024;

%note that if you donot give any output for freqz then it will plot it
%x axis is in pi rad/sec see for example
% 
% figure(1)
% clf
% freqz(b1,a1,N);
% 
[H1,w1]=freqz(b1,a1,N);
[H2,w2]=freqz(b2,a2,N);
[H3,w3]=freqz(b3,a3,N);

figure(1)
clf

subplot(331)
plot(w1,abs(H1));
title('abs(H1)');

subplot(332)
plot(w1,angle(H1));
title('angle(H1)');

subplot(333)
plot(w1/pi,unwrap(angle(H1)));
title('unwrapped angle(H1) in pi rad/sec');

subplot(334)
plot(w2,abs(H2));
title('abs(H2)');

subplot(335)
plot(w2,angle(H2));
title('angle(H2)');

subplot(336)
plot(w2/pi,unwrap(angle(H2)));
title('unwrapped angle(H2) in pi rad/sec');

subplot(337)
plot(w3,abs(H3));
title('abs(H3)');

subplot(338)
plot(w3,angle(H3));
title('angle(H3)');

subplot(339)
plot(w3/pi,unwrap(angle(H3)));
title('unwrapped angle(H3) in pi rad/sec');

return;

