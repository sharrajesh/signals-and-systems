clear
clc

for n=0:50
    x(n+1)=(3/4)^n;
end

a1=1;
b1=[0 0 0 1];
y1=filter(b1,a1,x);

a2=[1 -3/4];
b2=[-3/4 1];
y2=filter(b2,a2,x);

N=1024;
w=[0:N-1].*2*pi/N;
X=fft(x,N);
Y1=fft(y1,N);
Y2=fft(y2,N);

%also run tut5_3d to see the time domain plot of input x, output of filter1
%and filter2

figure(1)
clf

subplot(311)
plot(w, abs(X));
title('magnitue of DFFT of input x');

subplot(312)
plot(w,abs(Y1));
title('magnitue of DTFT of output(y1) of filter 1');

subplot(313)
plot(w,abs(Y2));
title('magnitue of DTFT of output(y2) of filter 2');

figure(2)
clf

subplot(311)
plot(w, angle(X));
title('phase of DFFT of input x');

subplot(312)
plot(w,angle(Y1));
title('phase of DTFT of output(y1) of filter 1');

subplot(313)
plot(w,angle(Y2));
title('phase of DTFT of output(y2) of filter 2');

return