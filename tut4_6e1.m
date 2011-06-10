%understanding amplitude modulation
clear
clc

load ctftmod.mat
fprintf('f1 = %d f2 = %d\n', f1, f2);

%by multiplying x by cos(w1 t) we are going to move m1 to low freq and m2
%and m3 to higher freq
N=length(t);
T=t(N);
tau=T/N;
w=(0:N-1)*(2*pi/N);

X=tau*fftshift(fft(x));

m1=x.*cos(2*pi*f1.*t);
M1=tau*fftshift(fft(m1));

m2=m1.*cos(2*pi*f1.*t);
M2=tau*fftshift(fft(m2));

figure(1)
gr=3; %graphic rows

subplot(gr,1,1)
plot(w,abs(X));

subplot(gr,1,2)
plot(w,abs(M1));

subplot(gr,1,3)
plot(w,abs(M2));
