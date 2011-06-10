% first run prob7_1a c d.m
clc

% if the sine wave was making 1000 cycles per sec then freq in rad/sec is
% 2 pi cps (cycles per second)
cps3=3500;
ohm3=2*pi*cps3;
x3=sin(ohm3*t);
[X3,f]=ctfts(x3,T);
X3r=roff(X3);

cps4=4000;
ohm4=2*pi*cps4;
x4=sin(ohm4*t);
[X4,f]=ctfts(x4,T);
X4r=roff(X4);

cps5=4500;
ohm5=2*pi*cps5;
x5=sin(ohm5*t);
[X5,f]=ctfts(x5,T);
X5r=roff(X5);

cps6=5000;
ohm6=2*pi*cps6;
x6=sin(ohm6*t);
[X6,f]=ctfts(x6,T);
X6r=roff(X6);

cps7=5500;
ohm7=2*pi*cps7;
x7=sin(ohm7*t);
[X7,f]=ctfts(x7,T);
X7r=roff(X7);


sound(x3,1/T);
pause(2);

sound(x4,1/T);
pause(2);

sound(x5,1/T);
pause(2);

sound(x6,1/T);
pause(2);

sound(x7,1/T);
pause(2);

return
