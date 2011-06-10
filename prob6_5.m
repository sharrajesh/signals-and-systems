clear
clc

p=hamming(75);
l=length(p);
w=linspace(-pi,pi,l);
P=fftshift(fft(p));

figure(1)
clf

subplot(311)
plot([1:l],p);
grid

subplot(312)
plot(w,abs(P));
grid

subplot(313)
plot(w,unwrap(angle(P)));
grid

return
