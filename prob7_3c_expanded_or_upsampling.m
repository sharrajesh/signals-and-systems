% first run prob7_3a b.m
clc

L=3;

% x expanded or upsampling
xe1=zeros(1,L*length(x1));
xe1(1:L:length(xe1))=x1;

xe2=zeros(1,L*length(x2));
xe2(1:L:length(xe2))=x2;

Xe1=fft(xe1,N);
Xe2=fft(xe2,N);

figure(3)
clf

subplot(211)
plot(wk,abs(Xe1));

subplot(212)
plot(wk,abs(Xe2));

return
