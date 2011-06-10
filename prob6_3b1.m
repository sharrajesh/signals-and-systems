% first run prob6_3a.m

% note that to get this high pass filter, we can get it by
%
% first modulating the filter from prob6_3a to the right and left by
% w=3*pi/5 and then adding to it modulation of the original filter left
% and right by pi/5 then subtracting the sum from Freq Resp of delta[n]
% 
% first shift the filter H to left to -4pi/5 by having w11=-3pi/5
w11=-3*pi/5;
% note here that in exp we are using n1 and for h we are using L
h11=exp(j*w11*n1).*h;
H11=fftshift(fft(h11, 1024));

w12=3*pi/5;
h12=exp(j*w12*n1).*h;
H12=fftshift(fft(h12, 1024));

% the further shift left and right by pi/5
w13=-pi/5;
h13=exp(j*w13*n1).*h;
H13=fftshift(fft(h13, 1024));

w14=pi/5;
h14=exp(j*w14*n1).*h;
H14=fftshift(fft(h14, 1024));

% for all pass filter the time domain value is delta(n)
del=zeros(1,l);
% 
% Note that this is very important. del needs to be 1 in the center
% else it will not be perfect impulse and the answer will not match.
% since l=97 implies that del needs to 1 at 49 i.e at (l-1)/2 +1 not 
% at (l-1)/2=48
% 
% del((l-1)/2+1)=1;
% DEL=fftshift(fft(del,1024));
% 
del((l-1)/2+1)=1;
DEL=fftshift(fft(del,1024));

H1m=abs(DEL)-(abs(H11)+abs(H12)+abs(H13)+abs(H14));
H1a=angle(DEL)-(angle(H11)+angle(H12)+angle(H13)+angle(H14));

figure(2)
clf

subplot(411)
plot(w,abs(H11),'r',w,abs(H12),'b',w,abs(H13),'g',w,abs(H14),'m');
title('magnitude of shifted frequency responces')

subplot(412)
plot(w,abs(DEL));
title('magnitude of FT of impulse responce')

subplot(413)
plot(w,abs(H1m));
title('magnitude of HP filter')

subplot(414)
plot(w,H1a);
title('phase of HP filter')
return
