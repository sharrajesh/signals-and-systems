
clear
clc

n=[-31:32];

syms n_s

h_s=sin(pi*(n_s-(1/2)))/(pi*(n_s-(1/2)));

h=subs(h_s,n_s,n);

N=1024;
[H,w]=freqz(h,1,N);

figure(1)
clf

subplot(311)
stem(n,h);

subplot(312)
plot(w,abs(H));

subplot(313)
plot(w,unwrap(angle(H)));

return
