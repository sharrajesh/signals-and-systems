% understanding about fftshift
clear
clc

w=linspace(0,10);

wc=3
[b2 a2]=butter(2,wc,'s');
freqs(b2,a2,w);
