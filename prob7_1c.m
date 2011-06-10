% first run prob7_1.m
clc

[X,f]=ctfts(x,T);

% note that we have to do roundoff before we can find the angle
Xr=roff(X);

figure(2)
clf

% by p371 and table 5.2 
subplot(211)
plot(f,abs(Xr));

subplot(212)
plot(f,angle(Xr));

return

