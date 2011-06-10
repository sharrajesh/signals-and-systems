clear
clc

load plus
colormap(gray);

figure(1)
clf
subplot(211)
image(64*x);
subplot(212)
image(64*xn);

%cut off freq in radians per second
wc=0.4;
%orders to find the filter for
n1=10;
n2=4;
n3=12;

%let N be the num of places where the freq samples are desired
N=50;

%for order n1 and cutoff wc butter will return the coefficients for
%the difference equation
%
%note that butter will have infinite length impulse response
%
%for more help doc butter
[b1,a1]=butter(n1,wc);
[H1,w1]=freqz(b1,a1,N,'whole');
%note that if you donot give any output for freqz then it will plot it
%x axis is in pi rad/sec

%remez is same firpm
%doc firpm
%note that both of these functions use Parks McClellan 
%algorithm underneath 
%
%b = firpm(n,f,a)
%
% Vectors f and a specify the frequency-magnitude characteristics of the 
% filter.
% 
% *
%  f is a vector of pairs of normalized frequency points, 
%  The frequencies must be in increasing order.
% *
% a is a vector containing the desired amplitudes at the points 
% specified in f.
% 
a2=1;
b2=remez(n2,[0 wc-0.04 wc+0.04 1],[1 1 0 0]);
[H2,w2]=freqz(b2,a2,N,'whole');

a3=1;
b3=remez(n3,[0 wc-0.04 wc+0.04 1],[1 1 0 0]);
[H3,w3]=freqz(b3,a3,N,'whole');

figure(2)
clf
freqz(b1,a1,N,'whole');
title('butter')
grid

figure(3)
clf
freqz(b2,a2,N,'whole');
title('remez for n2=4')
grid

figure(4)
clf
freqz(b3,a3,N,'whole');
title('remez for n2=12')
grid

return

