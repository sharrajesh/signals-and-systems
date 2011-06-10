
% note that if for very small band of frequencies Freq Resp has some mag
% then angle will be available only for those small band as well

T=[zeros(1,100) 0.3-0.04i zeros(1,100)];
omg =[0:length(T)-1]*2*pi/length(T);

figure

subplot(211)
plot(omg,abs(T));

subplot(212)
plot(omg,angle(T));


return

%run prob6_5a.m

s11=[s1;zeros(437,1)];
s21=[s2;zeros(437,1)];
s31=[s3;zeros(437,1)];

return

w1=pi/4;
w2=pi*2/4;
w3=pi*3/4;

n=[1:75]';

s1=p.*cos(w1*n);
s2=p.*cos(w2*n);
s3=p.*cos(w3*n);

figure(5)
clf

subplot(411)
plot(n,p)
title('hamming p')

subplot(412)
plot(n,s1)
title('p*cos(w1*n)');

subplot(413)
plot(n,s2)
title('p*cos(w2*n)');

subplot(414)
plot(n,s3);
title('p*cos(w3*n)');

return;
