clear
clc

%note that for k=1 and m=1 wn=1 and zeta=1/(2^(1/2))
k=1;
zeta=2^(-1/2);

m=1;
wn=(k/m)^(1/2)

a=[1 2*zeta*wn wn^2];
b=[wn^2];

%this will return 100 points between 10^-2 to 10^2
W=logspace(-2,2,100); 
%note that log10(W) will be same as linspace(-2,2,100)

figure(1)
clf

%note that here you are plotting for W=10^-2 to 10^2
%also note that if you donot give any output then this will automatically
%plot the freq resp
freqs(b,a,W);

%here it will not be plotted 
H1=freqs(b,a,W);
ang=angle(H1);
%pi:  x :180
deg=ang*(180/pi);

figure(2)
clf
subplot(211)
loglog(W,abs(H1));
grid 

subplot(212)
semilogx(W,deg);
grid

return;
