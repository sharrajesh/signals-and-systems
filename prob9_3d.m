
clear
clc

wc=10*pi; % cutoff freq
N=3; % order of the filter
k=[0:2*N-1]; 

ang_sp=pi*(2*k+1)/(2*N)+pi/2;
sp=wc*exp(j*ang_sp);

figure(1)
clf

plot(real(sp),imag(sp),'rX');

return
