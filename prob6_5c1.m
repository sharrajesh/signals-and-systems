%run prob6_5a.m

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
