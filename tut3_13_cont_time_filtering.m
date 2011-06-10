clear
clc

syms w hw

hw=1/(0.1*j*w+1);

rp=real(hw);
ip=imag(hw);

mag = abs(hw);
phs = atan(ip/rp); %note that angle does not work with symbolic objects

figure

r=[-8*pi 8*pi];

% from the graph it seems clear that it is passing only 
%lower frequency component of the signal
subplot(2,1,1);
ezplot(mag,r); 
grid

subplot(2,1,2)
ezplot(phs,r);
grid
