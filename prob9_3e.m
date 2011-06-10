
clear
clc

wc=10*pi; % cutoff freq
N=3; % order of the filter
k=[0:2*N-1]; 

ang_sp=pi*(2*k+1)/(2*N)+pi/2;
sp=wc*exp(j*ang_sp);

% to get the list of stable and causal the poles needed to be in left half
% plane 
csp=sp(real(sp)<=0);

% if we know the roots then we can get the polynomial by using poly
% here D represent a polynomial with cooeficients for s^3, s^2, s^1,
% S^0
Ds=poly(csp);

% now for s=1 we want abs(H)=1 hence Ns will be whatever the cooef of s^0
% is
Ns=Ds(end);

w=linspace(0,1000);

[z3,p3,k3]=butter(3,wc,'s');

z3,p3,k3
Ns
Ds

figure(1)
clf

freqs(Ns,Ds,w);

figure(2)
clf

bode(Ns,Ds);

return
