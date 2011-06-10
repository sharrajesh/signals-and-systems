clear
clc

load touch.mat

% sound(x1,8192)
% pause(1)

N=2048;
w=[0:N-1]*2*pi/N;

figure(1)
clf

off=1;

for i=0:6
    d(i+1,:)=x1(off:off+999);
    %sound(d(i+1,:),8192);
    X(i+1,:)=fft(d(i+1,:),N);
    off=off+1000+100;
    
    subplot(7, 1 ,i+1)
    plot(w,abs(X(i+1,:)));
    a=axis
    axis([0 1.5 a(3:4)]);
    grid minor
    box
end

return